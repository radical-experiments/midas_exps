#!/bin/bash
#SBATCH -J straggler4nodes_stat  # Job name
#SBATCH -o straggler4nodes_stat.out   # Name of stdout output file(%j expands to jobId)
#SBATCH -e straggler4nodes_stat.err   # Name of stderr output file(%j expands to jobId)
#SBATCH -p normal
#SBATCH -N 4                # Total number of nodes requested (16 cores/node)
#SBATCH -n 4                # Total number of mpi tasks requested
#SBATCH -t 08:00:00         # Run time (hh:mm:ss) - 1.5 hours
# The next line is required if the user has more than one project
#SBATCH -A TG-MCB090174  # Allocation name to charge job against
#SBATCH --reservation=dssd+TG-MCB090174+2376

cd /data/03170/tg824689/BecksteinLab/scripts-DCD
source activate daskMda
SCHEDULER=`hostname`
echo SCHEDULER: $SCHEDULER
hostnodes=`scontrol show hostnames $SLURM_NODELIST`
echo $hostnodes

dask-ssh --nprocs 48 $hostnodes &
sleep 20
echo "====-get to work-===="
python Parallel-RMSD-dist-final-dcd.py $SCHEDULER:8786
echo "===- Kill Scheduler -==="
ps axf | grep dask-ssh | grep -v grep | awk '{print "kill -9 " $1}' | sh

mkdir 4node_stat
mv *.txt 4node_stat
