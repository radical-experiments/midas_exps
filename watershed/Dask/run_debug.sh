#!/bin/bash

#SBATCH -J dask_debug                     # Job name
#SBATCH -o debug_logs/dask_debug96.out      # Name of stdout output file(%j expands to jobId)
#SBATCH -e debug_logs/dask_debug96.err      # Name of stderr output file(%j expands to jobId)
#SBATCH -p compute
#SBATCH -N 4                   # Total number of nodes requested (24 cores/node)
#SBATCH -t 0:10:00             # Run time (hh:mm:ss)

# The next line is required if the user has more than one project
#SBATCH -A unc100              # Allocation name to charge job against
#SBATCH --mail-user=supercomputeremails@gmail.com
#SBATCH --mail-type=end        # email me when the job finishes

cd $SLURM_SUBMIT_DIR

source activate watershed_Dask
SCHEDULER=`hostname`
hostnodes=`scontrol show hostnames $SLURM_NODELIST`

scheduler="$SCHEDULER:8786"
tasks=96
cores=96
images=96
path='/oasis/projects/nsf/unc100/willc97'
output="dask_debug_$((tasks))tasks_$((cores))cores_0"

echo iteration  : $iteration
echo scheduler  : $scheduler
echo tasks      : $tasks
echo cores      : $cores
echo images     : $images
echo path       : $path
echo output     : $output
echo SCHEDULER  : $SCHEDULER
echo hostnodes  : $hostnodes

dask-ssh --nprocs 24 --nthreads 1 --log-directory /oasis/projects/nsf/unc100/willc97/midas/watershed/Dask/debug_logs $hostnodes &
sleep 10

python /oasis/projects/nsf/unc100/willc97/midas/watershed/Dask/watershed_dask.py $scheduler $tasks $images $path -o $output -r $output

