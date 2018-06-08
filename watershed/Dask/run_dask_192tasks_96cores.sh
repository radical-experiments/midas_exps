#!/bin/bash

#SBATCH -p compute
#SBATCH -N 4                   # Total number of nodes requested (24 cores/node)
#SBATCH -t 02:00:00             # Run time (hh:mm:ss)

cd $SLURM_SUBMIT_DIR

rm -rf /home/willc97/dask-worker-space/*

source activate watershed_Dask
SCHEDULER=`hostname`
hostnodes=`scontrol show hostnames $SLURM_NODELIST`

iteration=$iteration
scheduler="$SCHEDULER:8786"
tasks=192
images=4096
path='/oasis/projects/nsf/unc100/willc97'
output="dask_192tasks_96cores_${iteration}"

echo iteration  : $iteration
echo scheduler  : $scheduler 
echo tasks      : $tasks
echo nodes      : 4
echo images     : $images
echo path       : $path
echo output     : $output
echo SCHEDULER  : $SCHEDULER
echo hostnodes  : $hostnodes

dask-ssh --nprocs 24 --nthreads 1 --log-directory /oasis/projects/nsf/unc100/willc97/midas/watershed/Dask/dask_logs $hostnodes &
sleep 10

python /oasis/projects/nsf/unc100/willc97/midas/watershed/Dask/watershed_dask.py $scheduler $tasks $images $path -o $output -r $output

