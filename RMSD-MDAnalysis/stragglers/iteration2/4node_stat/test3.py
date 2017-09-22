from __future__ import print_function
from MDAnalysis.analysis.align import rotation_matrix
from MDAnalysis.core.qcprot import CalcRMSDRotationalMatrix
import numpy as np
import time

def rmsd(xref0):
    # """Calculate optimal RMSD for AtomGroup *mobile* onto the coordinates *xref0* centered at the orgin.
    #The coordinates are not changed. No mass weighting.
    # 738 us
    #    xmobile0 = mobile.positions - mobile.center_of_mass()
    xmobile0 = np.random.rand(146,3)*15
    return CalcRMSDRotationalMatrix(xref0.T.astype(np.float64), xmobile0.T.astype(np.float64), 146, None, None)

def block_rmsd(xref0, start=None, stop=None, step=None):
#    clone = mda.Universe(topology, trajectory)
#    g = clone.atoms[index]
    
    
    bsize = stop-start
    results = np.zeros([bsize,2])
    t_comp = np.zeros(bsize)
    
    start1 = time.time()
    for iframe, ts in enumerate(range(start,stop,step)):
        start2 = time.time()
        results[iframe, :] = ts, rmsd(xref0)
        t_comp[iframe] = time.time()-start2

    t_all_frame = time.time()-start1
    t_comp_final = np.mean(t_comp)    

    return results, t_comp_final, t_all_frame 

def com_parallel_dask_distributed(n_blocks):
#    topology, trajectory = ag.universe.filename, ag.universe.trajectory.filename
#    ref0 = ag.universe.select_atoms("protein")  
#    xref0 = ref0.positions-ref0.center_of_mass()
#    bsize = int(np.ceil(ag.universe.trajectory.n_frames / float(n_blocks)))
    xref0 = np.random.rand(3341,3)*15
    n_frames = 1744600000
    bsize = int(np.ceil(n_frames / float(n_blocks)))
    print("setting up {} blocks with {} frames each".format(n_blocks, bsize))
    timings = np.zeros((n_blocks,1))
    blocks = []
    t_comp = []
    t_all_frame = []
    for iblock in range(n_blocks):
        if iblock % 1000:
            print(iblock)
        start, stop, step = iblock*bsize, (iblock+1)*bsize, 1
        time_1 = time.time() 
        out = block_rmsd(xref0, start=start, stop=stop, step=step)   
        time_2 = time.time()
	timings[iblock] = time_2-time_1
    np.save('timings600.npy',timings)
    return out


if __name__ == '__main__':

	com_parallel_dask_distributed(100000)
