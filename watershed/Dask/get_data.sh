for i in {10..19}; do
		scp willc97@comet.sdsc.xsede.org:/oasis/projects/nsf/unc100/willc97/midas/watershed/Dask/dask_profiles/*${i}.txt ./data_watershed_dask
		scp willc97@comet.sdsc.xsede.org:/oasis/projects/nsf/unc100/willc97/midas/watershed/Dask/dask_profiles/*${i}.csv ./data_watershed_dask
done;
