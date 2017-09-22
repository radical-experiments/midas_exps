#!/bin/bash
#SBATCH -J hist300  # Job name
#SBATCH -o hist300.out   # Name of stdout output file(%j expands to jobId)
#SBATCH -e hist300.err   # Name of stderr output file(%j expands to jobId)
#SBATCH -p normal
#SBATCH -N 1                # Total number of nodes requested (16 cores/node)
#SBATCH -n 1                # Total number of mpi tasks requested
#SBATCH -t 08:00:00         # Run time (hh:mm:ss) - 1.5 hours
# The next line is required if the user has more than one project
#SBATCH -A TG-MCB090174  # Allocation name to charge job against
#SBATCH --mail-user=i.paraskev@rutgers.edu
#SBATCH --mail-type=begin  # email me when the job starts
#SBATCH --mail-type=end    # email me when the job finishes
#SBATCH --reservation=dssd+TG-MCB090174+2376

cd /data/03170/tg824689/BecksteinLab/scripts-DCD
source activate daskMda

python hist300.py