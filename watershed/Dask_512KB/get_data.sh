for i in {0..2}; do
		scp willc97@comet.sdsc.xsede.org:/oasis/projects/nsf/unc100/willc97/midas/watershed/Dask/*${i}.txt ./data &
		scp willc97@comet.sdsc.xsede.org:/oasis/projects/nsf/unc100/willc97/midas/watershed/Dask/*${i}.csv ./data &
done;
