import sys
import numpy as np
import networkx as nx
from pyspark import SparkContext
from time import time
from scipy.spatial.distance import cdist

def find_edges((window,index),cutoff=15.00):
    map_start=time()
    #from scipy.spatial.distance import cdist

    par_list = (cdist(window[0],window[1])<cutoff)
    adj_list=np.where(par_list==True)
    adj_list = np.vstack(adj_list)
    adj_list[0] = adj_list[0]+index[0]-1
    adj_list[1] = adj_list[1]+index[1]-1
    if adj_list.shape[1]==0:
        adj_list=np.zeros((2,1))
    map_return=time()

    return (adj_list,index,map_start,map_return)

if __name__=="__main__":


    if len(sys.argv) != 3:
        print "Usage: Leaflet Finder: enter <partition_size> <atom_filename>"
        exit(-1)
    else:
        part_size = int(sys.argv[1])
        filename = sys.argv[2]

    start_time = time()
    coord_matrix = np.load(filename)
    matrix_size = coord_matrix.shape[0]
    #coord_matrix_broadcast = sc.broadcast(coord_matrix)
    arraged_coord = list()
    for i in range(1,matrix_size+1,part_size):
        for j in range(1,matrix_size+1,part_size):
            arraged_coord.append(([coord_matrix[i-1:i-1+part_size],coord_matrix[j-1:j-1+part_size]],[i,j]))
    overhead = time()
    print len(arraged_coord)
    timings = list()
    sc = SparkContext(appName="PythonLeafletFinder")
    dist_Matrix = sc.parallelize(arraged_coord,len(arraged_coord))
    init_time = time()
    # if this RDD is use in a function keep in mind that the pair
    # (value,index) will be passed. As a result it is collected
    # with the index and becomes a list of pairs.
    # From spark docs:
    # >>> sc.parallelize(["a", "b", "c", "d"], 3).zipWithIndex().collect()
    # [('a', 0), ('b', 1), ('c', 2), ('d', 3)]
    edge_list = dist_Matrix.map(find_edges)
    #arr = edge_list.collect()

    temp=time()
    adj_list=list()
    for element in edge_list.collect():
        collect_time=time()
        timings.append([element[1],element[2],element[3],collect_time])
        adj_list.append(element[0])
    adj_list=np.hstack(adj_list)
    edges=[(adj_list[0,k],adj_list[1,k]) for k in range(0,adj_list.shape[1])]

    #outfile = "adj_matrix"
    #np.save(outfile,arr)
    time_to_create_adj_matrix = time()
    #np.save('test_adj_matrix.npz.npy',adj_matrix)
    ##
    graph = nx.Graph(edges)
    subgraphs = nx.connected_components(graph)
    indices = [np.sort(list(g)) for g in subgraphs]
    connComp = time()
    np.save('components.npz.npy',indices)
    end = time()

    print 'Start,Overhead,Init,AdjMatrix,ConnComp,End\n'
    print '%f,%f,%f,%f,%f,%f'%(start_time,overhead,init_time,time_to_create_adj_matrix,connComp,end)
