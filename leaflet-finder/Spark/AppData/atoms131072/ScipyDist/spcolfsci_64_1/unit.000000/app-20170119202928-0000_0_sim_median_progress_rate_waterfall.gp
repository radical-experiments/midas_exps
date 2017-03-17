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

set arrow from 0,0 to 1207,0 ls 3 nohead
set arrow from 0,1 to 1219,1 ls 3 nohead
set arrow from 0,2 to 1208,2 ls 3 nohead
set arrow from 0,3 to 1215,3 ls 3 nohead
set arrow from 0,4 to 1207,4 ls 3 nohead
set arrow from 0,5 to 1221,5 ls 3 nohead
set arrow from 0,6 to 1199,6 ls 3 nohead
set arrow from 0,7 to 1215,7 ls 3 nohead
set arrow from 0,8 to 1210,8 ls 3 nohead
set arrow from 0,9 to 1220,9 ls 3 nohead
set arrow from 0,10 to 1215,10 ls 3 nohead
set arrow from 0,11 to 1256,11 ls 3 nohead
set arrow from 0,12 to 1276,12 ls 3 nohead
set arrow from 0,13 to 1273,13 ls 3 nohead
set arrow from 0,14 to 1262,14 ls 3 nohead
set arrow from 0,15 to 1267,15 ls 3 nohead
set arrow from 0,16 to 1276,16 ls 3 nohead
set arrow from 0,17 to 1270,17 ls 3 nohead
set arrow from 0,18 to 1255,18 ls 3 nohead
set arrow from 0,19 to 1253,19 ls 3 nohead
set arrow from 0,20 to 1270,20 ls 3 nohead
set arrow from 0,21 to 1221,21 ls 3 nohead
set arrow from 0,22 to 1225,22 ls 3 nohead
set arrow from 0,23 to 1283,23 ls 3 nohead
set arrow from 0,24 to 1208,24 ls 3 nohead
set arrow from 0,25 to 1267,25 ls 3 nohead
set arrow from 0,26 to 1258,26 ls 3 nohead
set arrow from 0,27 to 1210,27 ls 3 nohead
set arrow from 0,28 to 1264,28 ls 3 nohead
set arrow from 0,29 to 1285,29 ls 3 nohead
set arrow from 0,30 to 1214,30 ls 3 nohead
set arrow from 0,31 to 1216,31 ls 3 nohead
set arrow from 0,32 to 1211,32 ls 3 nohead
set arrow from 0,33 to 1304,33 ls 3 nohead
set arrow from 0,34 to 1229,34 ls 3 nohead
set arrow from 0,35 to 1176,35 ls 3 nohead
set arrow from 0,36 to 1210,36 ls 3 nohead
set arrow from 0,37 to 1220,37 ls 3 nohead
set arrow from 0,38 to 1183,38 ls 3 nohead
set arrow from 0,39 to 1179,39 ls 3 nohead
set arrow from 0,40 to 1284,40 ls 3 nohead
set arrow from 0,41 to 1190,41 ls 3 nohead
set arrow from 0,42 to 1190,42 ls 3 nohead
set arrow from 0,43 to 1182,43 ls 3 nohead
set arrow from 0,44 to 1219,44 ls 3 nohead
set arrow from 0,45 to 1184,45 ls 3 nohead
set arrow from 0,46 to 1229,46 ls 3 nohead
set arrow from 0,47 to 1191,47 ls 3 nohead
set arrow from 0,48 to 1194,48 ls 3 nohead
set arrow from 0,49 to 1195,49 ls 3 nohead
set arrow from 0,50 to 1281,50 ls 3 nohead
set arrow from 0,51 to 1197,51 ls 3 nohead
set arrow from 0,52 to 1242,52 ls 3 nohead
set arrow from 0,53 to 1266,53 ls 3 nohead
set arrow from 0,54 to 1274,54 ls 3 nohead
set arrow from 0,55 to 1278,55 ls 3 nohead
set arrow from 0,56 to 1273,56 ls 3 nohead
set arrow from 0,57 to 1290,57 ls 3 nohead
set arrow from 0,58 to 1195,58 ls 3 nohead
set arrow from 0,59 to 1274,59 ls 3 nohead
set arrow from 1176,60 to 2388,60 ls 3 nohead
set arrow from 1179,61 to 2381,61 ls 3 nohead
set arrow from 1182,62 to 2388,62 ls 3 nohead
set arrow from 1183,63 to 2394,63 ls 3 nohead
set arrow from 2394,64 to 16088,64 ls 3 nohead
set arrow from 2394,65 to 16291,65 ls 3 nohead
set arrow from 2394,66 to 17201,66 ls 3 nohead
set arrow from 2394,67 to 18509,67 ls 3 nohead
set arrow from 2394,68 to 23571,68 ls 3 nohead
set arrow from 2394,69 to 24511,69 ls 3 nohead
set arrow from 2394,70 to 25838,70 ls 3 nohead
set arrow from 2394,71 to 30079,71 ls 3 nohead
set arrow from 2394,72 to 30356,72 ls 3 nohead
set arrow from 2394,73 to 30771,73 ls 3 nohead
set arrow from 2394,74 to 35037,74 ls 3 nohead
set arrow from 2394,75 to 35159,75 ls 3 nohead
set arrow from 2394,76 to 40297,76 ls 3 nohead
set arrow from 2394,77 to 40686,77 ls 3 nohead
set arrow from 2394,78 to 41007,78 ls 3 nohead
set arrow from 2394,79 to 45341,79 ls 3 nohead
set arrow from 2394,80 to 45676,80 ls 3 nohead
set arrow from 2394,81 to 46408,81 ls 3 nohead
set arrow from 2394,82 to 49993,82 ls 3 nohead
set arrow from 2394,83 to 52967,83 ls 3 nohead
set arrow from 2394,84 to 54429,84 ls 3 nohead
set arrow from 2394,85 to 56118,85 ls 3 nohead
set arrow from 2394,86 to 57839,86 ls 3 nohead
set arrow from 2394,87 to 61893,87 ls 3 nohead
set arrow from 2394,88 to 62780,88 ls 3 nohead
set arrow from 2394,89 to 63443,89 ls 3 nohead
set arrow from 2394,90 to 64254,90 ls 3 nohead
set arrow from 2394,91 to 67129,91 ls 3 nohead
set arrow from 2394,92 to 69169,92 ls 3 nohead
set arrow from 2394,93 to 72581,93 ls 3 nohead
set arrow from 2394,94 to 73955,94 ls 3 nohead
set arrow from 2394,95 to 79199,95 ls 3 nohead
set arrow from 16088,96 to 93180,96 ls 3 nohead
set arrow from 16291,97 to 93929,97 ls 3 nohead
set arrow from 17201,98 to 100711,98 ls 3 nohead
set arrow from 18509,99 to 108016,99 ls 3 nohead
set arrow from 23571,100 to 113702,100 ls 3 nohead
set arrow from 24511,101 to 115686,101 ls 3 nohead
set arrow from 25838,102 to 123128,102 ls 3 nohead
set arrow from 30079,103 to 128632,103 ls 3 nohead
set arrow from 30356,104 to 129518,104 ls 3 nohead
set arrow from 30771,105 to 136625,105 ls 3 nohead
set arrow from 35037,106 to 141116,106 ls 3 nohead
set arrow from 35159,107 to 141872,107 ls 3 nohead
set arrow from 40297,108 to 148117,108 ls 3 nohead
set arrow from 40686,109 to 155040,109 ls 3 nohead
set arrow from 41007,110 to 155744,110 ls 3 nohead
set arrow from 45341,111 to 161226,111 ls 3 nohead
set arrow from 45676,112 to 167684,112 ls 3 nohead
set arrow from 46408,113 to 175363,113 ls 3 nohead
set arrow from 49993,114 to 179590,114 ls 3 nohead
set arrow from 52967,115 to 183719,115 ls 3 nohead
set arrow from 54429,116 to 192063,116 ls 3 nohead
set arrow from 56118,117 to 193826,117 ls 3 nohead
set arrow from 57839,118 to 196045,118 ls 3 nohead
set arrow from 61893,119 to 206293,119 ls 3 nohead
set arrow from 62780,120 to 208961,120 ls 3 nohead
set arrow from 63443,121 to 215484,121 ls 3 nohead
set arrow from 64254,122 to 216565,122 ls 3 nohead
set arrow from 67129,123 to 220004,123 ls 3 nohead
set arrow from 69169,124 to 228304,124 ls 3 nohead
set arrow from 72581,125 to 239108,125 ls 3 nohead
set arrow from 73955,126 to 241168,126 ls 3 nohead
set arrow from 79199,127 to 247693,127 ls 3 nohead
set ytics (64,128)
set xrange [0:247693]
set yrange [0:128]
set output "../Experiments/midasExp/leaflet-finder/Spark/AppData/atoms131072/ScipyDist/spcolfsci_64_1/unit.000000/app-20170119202928-0000_0_sim_median_progress_rate_waterfall.pdf"
plot -1
