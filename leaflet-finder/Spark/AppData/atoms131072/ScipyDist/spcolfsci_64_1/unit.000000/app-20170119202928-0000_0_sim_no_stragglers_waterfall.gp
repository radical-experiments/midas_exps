set terminal pdfcairo font 'Times,22' linewidth 4 rounded dashlength 2 size 5,5

# Line style for axes
set style line 80 lt 1 lc rgb "#808080"

# Line style for grid
set style line 81 lt 0 # dashed
set style line 81 lt rgb "#808080"  # grey

set grid back linestyle 81
set border 3 back linestyle 80 # Remove border on top and right.  These
             # borders are useless and make it harder
             # to see plotted lines near the border.
    # Also, put it in grey; no need for so much emphasis on a border.
set xtics nomirror
set ytics nomirror

set style line 1 lt rgb "#fc8d62" lw 1 pt 1
set style line 2 lt rgb "#8da0cb" lw 1 pt 6
set style line 3 lt rgb "#e78ac3" lw 1 pt 2
set style line 4 lt rgb "#a6d854" lw 1 pt 3
set style line 5 lt rgb "#66c2a5" lw 1 pt 4
set style line 6 lt rgb "#ffd92f" lw 1 pt 5
set style line 7 lt rgb "#e5c494" lw 1 pt 7
set style line 8 lt rgb "#b3b3b3" lw 1 pt 8

set xlabel "Time (ms)" offset 0,0.5
set key above

set arrow from 0,0 to 1231.5,0 ls 3 nohead
set arrow from 0,1 to 1231.5,1 ls 3 nohead
set arrow from 0,2 to 1231.5,2 ls 3 nohead
set arrow from 0,3 to 1231.5,3 ls 3 nohead
set arrow from 0,4 to 1231.5,4 ls 3 nohead
set arrow from 0,5 to 1231.5,5 ls 3 nohead
set arrow from 0,6 to 1231.5,6 ls 3 nohead
set arrow from 0,7 to 1231.5,7 ls 3 nohead
set arrow from 0,8 to 1231.5,8 ls 3 nohead
set arrow from 0,9 to 1231.5,9 ls 3 nohead
set arrow from 0,10 to 1231.5,10 ls 3 nohead
set arrow from 0,11 to 1231.5,11 ls 3 nohead
set arrow from 0,12 to 1231.5,12 ls 3 nohead
set arrow from 0,13 to 1231.5,13 ls 3 nohead
set arrow from 0,14 to 1231.5,14 ls 3 nohead
set arrow from 0,15 to 1231.5,15 ls 3 nohead
set arrow from 0,16 to 1231.5,16 ls 3 nohead
set arrow from 0,17 to 1231.5,17 ls 3 nohead
set arrow from 0,18 to 1231.5,18 ls 3 nohead
set arrow from 0,19 to 1231.5,19 ls 3 nohead
set arrow from 0,20 to 1231.5,20 ls 3 nohead
set arrow from 0,21 to 1231.5,21 ls 3 nohead
set arrow from 0,22 to 1231.5,22 ls 3 nohead
set arrow from 0,23 to 1231.5,23 ls 3 nohead
set arrow from 0,24 to 1231.5,24 ls 3 nohead
set arrow from 0,25 to 1231.5,25 ls 3 nohead
set arrow from 0,26 to 1231.5,26 ls 3 nohead
set arrow from 0,27 to 1231.5,27 ls 3 nohead
set arrow from 0,28 to 1231.5,28 ls 3 nohead
set arrow from 0,29 to 1231.5,29 ls 3 nohead
set arrow from 0,30 to 1231.5,30 ls 3 nohead
set arrow from 0,31 to 1231.5,31 ls 3 nohead
set arrow from 0,32 to 1231.5,32 ls 3 nohead
set arrow from 0,33 to 1231.5,33 ls 3 nohead
set arrow from 0,34 to 1231.5,34 ls 3 nohead
set arrow from 0,35 to 1231.5,35 ls 3 nohead
set arrow from 0,36 to 1231.5,36 ls 3 nohead
set arrow from 0,37 to 1231.5,37 ls 3 nohead
set arrow from 0,38 to 1231.5,38 ls 3 nohead
set arrow from 0,39 to 1231.5,39 ls 3 nohead
set arrow from 0,40 to 1231.5,40 ls 3 nohead
set arrow from 0,41 to 1231.5,41 ls 3 nohead
set arrow from 0,42 to 1231.5,42 ls 3 nohead
set arrow from 0,43 to 1231.5,43 ls 3 nohead
set arrow from 0,44 to 1231.5,44 ls 3 nohead
set arrow from 0,45 to 1231.5,45 ls 3 nohead
set arrow from 0,46 to 1231.5,46 ls 3 nohead
set arrow from 0,47 to 1231.5,47 ls 3 nohead
set arrow from 0,48 to 1231.5,48 ls 3 nohead
set arrow from 0,49 to 1231.5,49 ls 3 nohead
set arrow from 0,50 to 1231.5,50 ls 3 nohead
set arrow from 0,51 to 1231.5,51 ls 3 nohead
set arrow from 0,52 to 1231.5,52 ls 3 nohead
set arrow from 0,53 to 1231.5,53 ls 3 nohead
set arrow from 0,54 to 1231.5,54 ls 3 nohead
set arrow from 0,55 to 1231.5,55 ls 3 nohead
set arrow from 0,56 to 1231.5,56 ls 3 nohead
set arrow from 0,57 to 1231.5,57 ls 3 nohead
set arrow from 0,58 to 1231.5,58 ls 3 nohead
set arrow from 0,59 to 1231.5,59 ls 3 nohead
set arrow from 1231.5,60 to 2463.0,60 ls 3 nohead
set arrow from 1231.5,61 to 2463.0,61 ls 3 nohead
set arrow from 1231.5,62 to 2463.0,62 ls 3 nohead
set arrow from 1231.5,63 to 2463.0,63 ls 3 nohead
set arrow from 2463.0,64 to 84986.5,64 ls 3 nohead
set arrow from 2463.0,65 to 84986.5,65 ls 3 nohead
set arrow from 2463.0,66 to 84986.5,66 ls 3 nohead
set arrow from 2463.0,67 to 84986.5,67 ls 3 nohead
set arrow from 2463.0,68 to 84986.5,68 ls 3 nohead
set arrow from 2463.0,69 to 84986.5,69 ls 3 nohead
set arrow from 2463.0,70 to 84986.5,70 ls 3 nohead
set arrow from 2463.0,71 to 84986.5,71 ls 3 nohead
set arrow from 2463.0,72 to 84986.5,72 ls 3 nohead
set arrow from 2463.0,73 to 84986.5,73 ls 3 nohead
set arrow from 2463.0,74 to 84986.5,74 ls 3 nohead
set arrow from 2463.0,75 to 84986.5,75 ls 3 nohead
set arrow from 2463.0,76 to 84986.5,76 ls 3 nohead
set arrow from 2463.0,77 to 84986.5,77 ls 3 nohead
set arrow from 2463.0,78 to 84986.5,78 ls 3 nohead
set arrow from 2463.0,79 to 84986.5,79 ls 3 nohead
set arrow from 2463.0,80 to 84986.5,80 ls 3 nohead
set arrow from 2463.0,81 to 84986.5,81 ls 3 nohead
set arrow from 2463.0,82 to 84986.5,82 ls 3 nohead
set arrow from 2463.0,83 to 84986.5,83 ls 3 nohead
set arrow from 2463.0,84 to 84986.5,84 ls 3 nohead
set arrow from 2463.0,85 to 84986.5,85 ls 3 nohead
set arrow from 2463.0,86 to 84986.5,86 ls 3 nohead
set arrow from 2463.0,87 to 84986.5,87 ls 3 nohead
set arrow from 2463.0,88 to 84986.5,88 ls 3 nohead
set arrow from 2463.0,89 to 84986.5,89 ls 3 nohead
set arrow from 2463.0,90 to 84986.5,90 ls 3 nohead
set arrow from 2463.0,91 to 84986.5,91 ls 3 nohead
set arrow from 2463.0,92 to 84986.5,92 ls 3 nohead
set arrow from 2463.0,93 to 84986.5,93 ls 3 nohead
set arrow from 2463.0,94 to 84986.5,94 ls 3 nohead
set arrow from 2463.0,95 to 84986.5,95 ls 3 nohead
set arrow from 84986.5,96 to 167510.0,96 ls 3 nohead
set arrow from 84986.5,97 to 167510.0,97 ls 3 nohead
set arrow from 84986.5,98 to 167510.0,98 ls 3 nohead
set arrow from 84986.5,99 to 167510.0,99 ls 3 nohead
set arrow from 84986.5,100 to 167510.0,100 ls 3 nohead
set arrow from 84986.5,101 to 167510.0,101 ls 3 nohead
set arrow from 84986.5,102 to 167510.0,102 ls 3 nohead
set arrow from 84986.5,103 to 167510.0,103 ls 3 nohead
set arrow from 84986.5,104 to 167510.0,104 ls 3 nohead
set arrow from 84986.5,105 to 167510.0,105 ls 3 nohead
set arrow from 84986.5,106 to 167510.0,106 ls 3 nohead
set arrow from 84986.5,107 to 167510.0,107 ls 3 nohead
set arrow from 84986.5,108 to 167510.0,108 ls 3 nohead
set arrow from 84986.5,109 to 167510.0,109 ls 3 nohead
set arrow from 84986.5,110 to 167510.0,110 ls 3 nohead
set arrow from 84986.5,111 to 167510.0,111 ls 3 nohead
set arrow from 84986.5,112 to 167510.0,112 ls 3 nohead
set arrow from 84986.5,113 to 167510.0,113 ls 3 nohead
set arrow from 84986.5,114 to 167510.0,114 ls 3 nohead
set arrow from 84986.5,115 to 167510.0,115 ls 3 nohead
set arrow from 84986.5,116 to 167510.0,116 ls 3 nohead
set arrow from 84986.5,117 to 167510.0,117 ls 3 nohead
set arrow from 84986.5,118 to 167510.0,118 ls 3 nohead
set arrow from 84986.5,119 to 167510.0,119 ls 3 nohead
set arrow from 84986.5,120 to 167510.0,120 ls 3 nohead
set arrow from 84986.5,121 to 167510.0,121 ls 3 nohead
set arrow from 84986.5,122 to 167510.0,122 ls 3 nohead
set arrow from 84986.5,123 to 167510.0,123 ls 3 nohead
set arrow from 84986.5,124 to 167510.0,124 ls 3 nohead
set arrow from 84986.5,125 to 167510.0,125 ls 3 nohead
set arrow from 84986.5,126 to 167510.0,126 ls 3 nohead
set arrow from 84986.5,127 to 167510.0,127 ls 3 nohead
set ytics (64,128)
set xrange [0:167510.0]
set yrange [0:128]
set output "../Experiments/midasExp/leaflet-finder/Spark/AppData/atoms131072/ScipyDist/spcolfsci_64_1/unit.000000/app-20170119202928-0000_0_sim_no_stragglers_waterfall.pdf"
plot -1
