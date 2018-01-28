import pandas as pd
import numpy as np
from DaskProfileReader import *
from bokeh.models import CheckboxGroup, CustomJS

def mahzad_profs(folders, barrier=False):
    df = pd.DataFrame(columns=['Cores','Run','Metric','Array'])
    for folder in folders:
        datafile = open(folder+'/data2.txt')
        lines = datafile.readlines()
        datafile.close()
        tot_line = lines[0]
        times = tot_line.split('[')[1].split(']')[0]
        times2 = np.array([float(x) for x in times.split(', ')])
        df.loc[len(df)]=[int(tot_line.split(' ')[0]),int(tot_line.split(' ')[1]),'Total',times2]
        if barrier:
            waittime = lines[3]
            times = waittime.split('[')[1].split(']')[0]
            times2 = np.array([float(x) for x in times.split(', ')])
            df.loc[len(df)]=[int(waittime.split(' ')[0]),int(waittime.split(' ')[1]),'Wait',times2]
            commline = lines[4]
            times = commline.split('[')[1].split(']')[0]
            times2 = np.array([float(x) for x in times.split(', ')])
            df.loc[len(df)]=[int(commline.split(' ')[0]),int(commline.split(' ')[1]),'Communication',times2]
            comptime = lines[5]
            times = comptime.split('[')[1].split(']')[0]
            times2 = np.array([float(x) for x in times.split(', ')])
            df.loc[len(df)]=[int(comptime.split(' ')[0]),int(comptime.split(' ')[1]),'Computation',times2]
        else:
            commline = lines[3]
            times = commline.split('[')[1].split(']')[0]
            times2 = np.array([float(x) for x in times.split(', ')])
            df.loc[len(df)]=[int(commline.split(' ')[0]),int(commline.split(' ')[1]),'Communication',times2]
            comptime = lines[4]
            times = comptime.split('[')[1].split(']')[0]
            times2 = np.array([float(x) for x in times.split(', ')])
            df.loc[len(df)]=[int(comptime.split(' ')[0]),int(comptime.split(' ')[1]),'Computation',times2]
    
    return df


def straggler_test_reader(path,data):

    rmsd = pd.DataFrame(columns=['Block','Try','Task','Time'])
    block_size = [1,2,3,4,6,8,9,12,16,18,24,36,48,72,144]

    for block in block_size:
        temp = pd.DataFrame(columns=['Block','Try','Task','Time'])
        data1 = DaskProfileReader('%s/stragglers_test_%d_%d_1.txt'%(path,data,block))
        temp['Time']=data1[data1['name']=='block_rmsd']['duration'].values/1000
        temp['Task']=range(block)
        temp['Try']='Run 1'
        temp['Block']=block
        rmsd = rmsd.append(temp)
        temp = pd.DataFrame(columns=['Block','Try','Task','Time'])
        data2 = DaskProfileReader('%s/stragglers_test_%d_%d_2.txt'%(path,data,block))
        temp['Time'] = data2[data2['name']=='block_rmsd']['duration'].values/1000
        temp['Task']=range(block)
        temp['Try']='Run 2'
        temp['Block']=block
        rmsd= rmsd.append(temp)
        temp = pd.DataFrame(columns=['Block','Try','Task','Time'])
        data3 = DaskProfileReader('%s/stragglers_test_%d_%d_3.txt'%(path,data,block))
        temp['Time'] = data3[data3['name']=='block_rmsd']['duration'].values/1000
        temp['Task']=range(block)
        temp['Try']='Run 3'
        temp['Block']=block
        rmsd = rmsd.append(temp)
        temp = pd.DataFrame(columns=['Block','Try','Task','Time'])
        data4 = DaskProfileReader('%s/stragglers_test_%d_%d_4.txt'%(path,data,block))
        temp['Time'] = data4[data4['name']=='block_rmsd']['duration'].values/1000
        temp['Task']=range(block)
        temp['Try']='Run 4'
        temp['Block']=block
        rmsd = rmsd.append(temp)
        temp = pd.DataFrame(columns=['Block','Try','Task','Time'])
        data5 = DaskProfileReader('%s/stragglers_test_%d_%d_5.txt'%(path,data,block))
        temp['Time'] = data5[data5['name']=='block_rmsd']['duration'].values/1000
        temp['Task']=range(block)
        temp['Try']='Run 5'
        temp['Block']=block
        rmsd = rmsd.append(temp)

    rmsd=rmsd.reset_index().drop('index',axis=1)

    return rmsd
    
    
def mpicpp_total_time_finder(folders):
    tot_times = pd.DataFrame(columns=['Processes','MaxTime'])
    for folder in folders:
        timings = pd.DataFrame.from_csv(folder+'/timings.csv')
        timings['TotalTime'] = timings.sum(axis=1)
        tot_times.loc[len(tot_times)] = [int(folder.split('/')[2].split('_')[1].split('p')[0]),timings['TotalTime'].max()/1000000]
    
    return tot_times

def mpi4py_total_time_finder(folders):
    tot_times = pd.DataFrame(columns=['Processes','Array','MaxTime'])
    for folder in folders:
        timingsFile = open(folder+'/data2.txt')
        tot_time_line = timingsFile.readline()
        tot_time_array = tot_time_line[tot_time_line.find('[')+1:tot_time_line.find(']')-1]
        tot_time_np = np.array(map(float,tot_time_array.split(',')))
        tot_times.loc[len(tot_times)] = [int(tot_time_line.split(' ')[0]),tot_time_np,tot_time_np.max()]
        timingsFile.close()
    
    return tot_times


def straggler_freq(df,nodes=[1,2,3],cores=24,mult=3,center='mean'):
    
    values = list()
    probs = list()
    impacts = list()
    for node in nodes:
        tempDF = df[df['Nodes']==node].drop(['Nodes'],axis=1).reset_index(drop='index')
        runs = len(tempDF)/(node*cores)
        exist = 0
        freqs = list()
        impact = list()
        for run in range(runs):
            temp = tempDF[run*cores:(run+1)*cores].reset_index(drop='index')
            if center == 'mean':
                freq  = ((temp>(temp.mean()+mult*temp.std()))==True).sum().values[0]/float(node*cores)
                if freq > 0:
                    exist += 1 if freq != 0 else 0
                    impact.append(((temp.max()-temp.mean())/temp.mean()).values[0])
                    freqs.append(freq)
            elif center == 'median':
                freq = ((temp>(temp.median()+mult*temp.std()))==True).sum().values[0]/float(node*cores)
                if freq > 0:
                    exist += 1 if freq != 0 else 0
                    impact.append(((temp.max()-temp.median())/temp.median()).values[0])
                    freqs.append(freq)
            elif center == 'fifty':
                freq = ((temp>(1.5*temp.median()))==True).sum().values[0]/float(node*cores)
                if freq > 0:
                    exist += 1 if freq != 0 else 0
                    impact.append(((temp.max()-temp.median())/temp.median()).values[0])
                    freqs.append(freq)


        impacts.append(impact)
        values.append(freqs)
        prob = float(exist)/float(runs)
        probs.append(prob)
        
        
    return values,probs,impacts

def slowest_impact(df,nodes=[1,2,3],cores=24,center='mean'):
    
    impacts = list()
    for node in nodes:
        tempDF = df[df['Nodes']==node].drop(['Nodes'],axis=1).reset_index(drop='index')
        runs = len(tempDF)/(node*cores)
        impact = list()
        for run in range(runs):
            temp = tempDF[run*cores:(run+1)*cores].reset_index(drop='index')
            if center == 'mean':
                impact.append(((temp.max()-temp.mean())/temp.mean()).values[0])
            elif center == 'median':
                impact.append(((temp.max()-temp.median())/temp.median()).values[0])
        
        impacts.append(impact)
        
    return impacts


def straggler_samples(df,norm=None):
    
    
    node1 = df[df['Nodes']==1].drop(['Nodes'],axis=1)
    node2 = df[df['Nodes']==2].drop(['Nodes'],axis=1)
    node3 = df[df['Nodes']==3].drop(['Nodes'],axis=1)
     
    if norm=='mean':
        values = [node1/node1.mean(),
                  node2/node2.mean(),
                  node3/node3.mean()]
    elif norm=='median':
        values = [node1/node1.median(),
                  node2/node2.median(),
                  node3/node3.median()]
    else:
        values = [node1,
                  node2,
                  node3]
        
    return values

def task_hist(df,node,bins,div=1.0,col='Duration'):
    tasks = df[df['Nodes']==node].drop(['Nodes'],axis=1)
    
    hist,edges = np.histogram((tasks/div)[col].values,bins=bins)
    maximum = (tasks/div)[col].max()
    hist = hist/float(len(tasks[col].values))
    mean = (tasks/div)[col].mean()
    median = (tasks/div)[col].median()
    std  = (tasks/div)[col].std()
    return hist,edges,mean,std,maximum,median
