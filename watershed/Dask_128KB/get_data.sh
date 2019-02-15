for i in {0..5}; do
		scp willc97@comet.sdsc.xsede.org:/oasis/projects/nsf/unc100/willc97/midas/watershed/Dask/dask_profiles_sizes/*128KB_${i}.txt ./data &
		scp willc97@comet.sdsc.xsede.org:/oasis/projects/nsf/unc100/willc97/midas/watershed/Dask/dask_profiles_sizes/*128KB_${i}.csv ./data &
done;
