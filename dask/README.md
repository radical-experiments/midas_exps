This folder contains experiments executing by using Dask's several schedulers with zero workload.

The multiproccesing and multithreading schedulers used a single node, while the distributed scheduler
was used 1 to 4 nodes.

The folder name shows the resource used.

  * Stampede: 
     * Files with the prefix multi_prof were obtained by Dask's profiler when the multiprocessing scheduler was used.
     * Files with the prefix threaded_prof were obtained by Dask's profiler when the multithreading scheduler was used.
     * Files with the NumPy files contain measurements when the distributed scheduler was used. The first number in the filename
       is the number of tasks and the second the iteration of the experiment. In all cases, a Dask client was started and closed as soon
       as the created tasks finished.
        Note: The 16 tasks case was executed once with the worker node being the same as the node with the scheduler - additional \_1\_ between task number and iteration - and with the worker on a different node from the one that has the scheduler.