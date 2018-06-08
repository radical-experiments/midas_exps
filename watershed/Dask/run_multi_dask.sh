#!/bin/bash

JOB_ID="16519911"
for iteration in {10..19}; do

	# echo weak scaling
	config="24tasks_24cores"
	J="dask_${config}_${iteration}" 
	o="dask_logs/dask_${config}_${iteration}.out"
	e="dask_logs/dask_${config}_${iteration}.err"
	if ((${JOB_ID: -8} == 0)); then
		JOB_ID=$(sbatch -J $J -o $o -e $e --export=iteration=$iteration run_dask_${config}.sh)
	else
		JOB_ID=$(sbatch --dependency=afterany:${JOB_ID: -8} -J $J -o $o -e $e --export=iteration=$iteration run_dask_${config}.sh)
	fi
	echo "${iteration}.1 ${JOB_ID}"

	# echo weak scaling
	config="48tasks_48cores"
	J="dask_${config}_${iteration}"
	o="dask_logs/dask_${config}_${iteration}.out"
	e="dask_logs/dask_${config}_${iteration}.err"
	if ((${JOB_ID: -8} == 0)); then
		JOB_ID=$(sbatch -J $J -o $o -e $e --export=iteration=$iteration run_dask_${config}.sh)
	else
		JOB_ID=$(sbatch --dependency=afterany:${JOB_ID: -8} -J $J -o $o -e $e --export=iteration=$iteration run_dask_${config}.sh)
	fi
	echo "${iteration}.2 ${JOB_ID}"

	# echo weak scaling
	config="96tasks_96cores"
	J="dask_${config}_${iteration}"
	o="dask_logs/dask_${config}_${iteration}.out"
	e="dask_logs/dask_${config}_${iteration}.err"
	if ((${JOB_ID: -8} == 0)); then
		JOB_ID=$(sbatch -J $J -o $o -e $e --export=iteration=$iteration run_dask_${config}.sh)
	else
		JOB_ID=$(sbatch --dependency=afterany:${JOB_ID: -8} -J $J -o $o -e $e --export=iteration=$iteration run_dask_${config}.sh)
	fi
	echo "${iteration}.3 ${JOB_ID}"

	# echo weak scaling
	config="192tasks_192cores"
	J="dask_${config}_${iteration}"
	o="dask_logs/dask_${config}_${iteration}.out"
	e="dask_logs/dask_${config}_${iteration}.err"
	if ((${JOB_ID: -8} == 0)); then
		JOB_ID=$(sbatch -J $J -o $o -e $e --export=iteration=$iteration run_dask_${config}.sh)
	else
		JOB_ID=$(sbatch --dependency=afterany:${JOB_ID: -8} -J $J -o $o -e $e --export=iteration=$iteration run_dask_${config}.sh)
	fi
	echo "${iteration}.4 ${JOB_ID}"

	# echo strong scaling
	config="192tasks_24cores"
	J="dask_${config}_${iteration}"
	o="dask_logs/dask_${config}_${iteration}.out"
	e="dask_logs/dask_${config}_${iteration}.err"
	if ((${JOB_ID: -8} == 0)); then
		JOB_ID=$(sbatch -J $J -o $o -e $e --export=iteration=$iteration run_dask_${config}.sh)
	else
		JOB_ID=$(sbatch --dependency=afterany:${JOB_ID: -8} -J $J -o $o -e $e --export=iteration=$iteration run_dask_${config}.sh)
	fi
	echo "${iteration}.5 ${JOB_ID}"

	# echo strong scaling
	config="192tasks_48cores"
	J="dask_${config}_${iteration}"
	o="dask_logs/dask_${config}_${iteration}.out"
	e="dask_logs/dask_${config}_${iteration}.err"
	if ((${JOB_ID: -8} == 0)); then
		JOB_ID=$(sbatch -J $J -o $o -e $e --export=iteration=$iteration run_dask_${config}.sh)
	else
		JOB_ID=$(sbatch --dependency=afterany:${JOB_ID: -8} -J $J -o $o -e $e --export=iteration=$iteration run_dask_${config}.sh)
	fi
	echo "${iteration}.6 ${JOB_ID}"

	# echo strong scaling
	config="192tasks_96cores"
	J="dask_${config}_${iteration}"
	o="dask_logs/dask_${config}_${iteration}.out"
	e="dask_logs/dask_${config}_${iteration}.err"
	if ((${JOB_ID: -8} == 0)); then
		JOB_ID=$(sbatch -J $J -o $o -e $e --export=iteration=$iteration run_dask_${config}.sh)
	else
		JOB_ID=$(sbatch --dependency=afterany:${JOB_ID: -8} -J $J -o $o -e $e --export=iteration=$iteration run_dask_${config}.sh)
	fi
	echo "${iteration}.6 ${JOB_ID}"

done;