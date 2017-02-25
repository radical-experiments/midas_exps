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

set arrow from 0,0 to 1304,0 ls 3 nohead
set arrow from 0,1 to 1283,1 ls 3 nohead
set arrow from 0,2 to 1285,2 ls 3 nohead
set arrow from 0,3 to 1276,3 ls 3 nohead
set arrow from 0,4 to 1276,4 ls 3 nohead
set arrow from 0,5 to 1273,5 ls 3 nohead
set arrow from 0,6 to 1284,6 ls 3 nohead
set arrow from 0,7 to 1290,7 ls 3 nohead
set arrow from 0,8 to 1270,8 ls 3 nohead
set arrow from 0,9 to 1270,9 ls 3 nohead
set arrow from 0,10 to 1267,10 ls 3 nohead
set arrow from 0,11 to 1281,11 ls 3 nohead
set arrow from 0,12 to 1267,12 ls 3 nohead
set arrow from 0,13 to 1262,13 ls 3 nohead
set arrow from 0,14 to 1278,14 ls 3 nohead
set arrow from 0,15 to 1264,15 ls 3 nohead
set arrow from 0,16 to 1274,16 ls 3 nohead
set arrow from 0,17 to 1256,17 ls 3 nohead
set arrow from 0,18 to 1273,18 ls 3 nohead
set arrow from 0,19 to 1258,19 ls 3 nohead
set arrow from 0,20 to 1255,20 ls 3 nohead
set arrow from 0,21 to 1274,21 ls 3 nohead
set arrow from 0,22 to 1253,22 ls 3 nohead
set arrow from 0,23 to 1266,23 ls 3 nohead
set arrow from 0,24 to 1242,24 ls 3 nohead
set arrow from 0,25 to 1221,25 ls 3 nohead
set arrow from 0,26 to 1219,26 ls 3 nohead
set arrow from 0,27 to 1225,27 ls 3 nohead
set arrow from 0,28 to 1220,28 ls 3 nohead
set arrow from 0,29 to 1229,29 ls 3 nohead
set arrow from 0,30 to 1215,30 ls 3 nohead
set arrow from 0,31 to 1221,31 ls 3 nohead
set arrow from 0,32 to 1215,32 ls 3 nohead
set arrow from 0,33 to 1215,33 ls 3 nohead
set arrow from 0,34 to 1229,34 ls 3 nohead
set arrow from 0,35 to 1207,35 ls 3 nohead
set arrow from 0,36 to 1210,36 ls 3 nohead
set arrow from 0,37 to 1208,37 ls 3 nohead
set arrow from 0,38 to 1207,38 ls 3 nohead
set arrow from 0,39 to 1220,39 ls 3 nohead
set arrow from 0,40 to 1216,40 ls 3 nohead
set arrow from 0,41 to 1214,41 ls 3 nohead
set arrow from 0,42 to 1219,42 ls 3 nohead
set arrow from 0,43 to 1210,43 ls 3 nohead
set arrow from 0,44 to 1208,44 ls 3 nohead
set arrow from 0,45 to 1211,45 ls 3 nohead
set arrow from 0,46 to 1199,46 ls 3 nohead
set arrow from 0,47 to 1210,47 ls 3 nohead
set arrow from 0,48 to 1212,48 ls 3 nohead
set arrow from 0,49 to 1197,49 ls 3 nohead
set arrow from 0,50 to 1195,50 ls 3 nohead
set arrow from 0,51 to 1194,51 ls 3 nohead
set arrow from 0,52 to 1190,52 ls 3 nohead
set arrow from 0,53 to 1190,53 ls 3 nohead
set arrow from 0,54 to 1191,54 ls 3 nohead
set arrow from 0,55 to 1211,55 ls 3 nohead
set arrow from 0,56 to 1195,56 ls 3 nohead
set arrow from 0,57 to 1206,57 ls 3 nohead
set arrow from 0,58 to 1183,58 ls 3 nohead
set arrow from 0,59 to 1202,59 ls 3 nohead
set arrow from 1183,60 to 2367,60 ls 3 nohead
set arrow from 1190,61 to 2372,61 ls 3 nohead
set arrow from 1190,62 to 2369,62 ls 3 nohead
set arrow from 1191,63 to 2367,63 ls 3 nohead
set arrow from 2372,64 to 54407,64 ls 3 nohead
set arrow from 2372,65 to 140006,65 ls 3 nohead
set arrow from 2372,66 to 117109,66 ls 3 nohead
set arrow from 2372,67 to 101534,67 ls 3 nohead
set arrow from 2372,68 to 63421,68 ls 3 nohead
set arrow from 2372,69 to 45654,69 ls 3 nohead
set arrow from 2372,70 to 93547,70 ls 3 nohead
set arrow from 2372,71 to 73933,71 ls 3 nohead
set arrow from 2372,72 to 168899,72 ls 3 nohead
set arrow from 2372,73 to 92503,73 ls 3 nohead
set arrow from 2372,74 to 40275,74 ls 3 nohead
set arrow from 2372,75 to 62758,75 ls 3 nohead
set arrow from 2372,76 to 45319,76 ls 3 nohead
set arrow from 2372,77 to 116726,77 ls 3 nohead
set arrow from 2372,78 to 24489,78 ls 3 nohead
set arrow from 2372,79 to 110192,79 ls 3 nohead
set arrow from 2372,80 to 124380,80 ls 3 nohead
set arrow from 2372,81 to 16066,81 ls 3 nohead
set arrow from 2372,82 to 79464,82 ls 3 nohead
set arrow from 2372,83 to 52945,83 ls 3 nohead
set arrow from 2372,84 to 161507,84 ls 3 nohead
set arrow from 2372,85 to 49971,85 ls 3 nohead
set arrow from 2372,86 to 148553,86 ls 3 nohead
set arrow from 2372,87 to 23549,87 ls 3 nohead
set arrow from 2372,88 to 100925,88 ls 3 nohead
set arrow from 2372,89 to 30334,89 ls 3 nohead
set arrow from 2372,90 to 154413,90 ls 3 nohead
set arrow from 2372,91 to 109085,91 ls 3 nohead
set arrow from 2372,92 to 131969,92 ls 3 nohead
set arrow from 2372,93 to 25816,93 ls 3 nohead
set arrow from 2372,94 to 85882,94 ls 3 nohead
set arrow from 2372,95 to 57817,95 ls 3 nohead
set arrow from 16066,96 to 121920,96 ls 3 nohead
set arrow from 23549,97 to 113056,97 ls 3 nohead
set arrow from 24489,98 to 155241,98 ls 3 nohead
set arrow from 25816,99 to 96003,99 ls 3 nohead
set arrow from 30334,100 to 136413,100 ls 3 nohead
set arrow from 40275,101 to 102135,101 ls 3 nohead
set arrow from 45319,102 to 213813,102 ls 3 nohead
set arrow from 45654,103 to 190054,103 ls 3 nohead
set arrow from 49971,104 to 88584,104 ls 3 nohead
set arrow from 52945,105 to 91237,105 ls 3 nohead
set arrow from 54407,106 to 207282,106 ls 3 nohead
set arrow from 57817,107 to 155107,107 ls 3 nohead
set arrow from 62758,108 to 229971,108 ls 3 nohead
set arrow from 63421,109 to 91798,109 ls 3 nohead
set arrow from 73933,110 to 212139,110 ls 3 nohead
set arrow from 79464,111 to 144199,111 ls 3 nohead
set arrow from 85882,112 to 145381,112 ls 3 nohead
set arrow from 88584,113 to 102481,113 ls 3 nohead
set arrow from 91237,114 to 118922,114 ls 3 nohead
set arrow from 91798,115 to 145522,115 ls 3 nohead
set arrow from 92503,116 to 221458,116 ls 3 nohead
set arrow from 93547,117 to 108354,117 ls 3 nohead
set arrow from 96003,118 to 162778,118 ls 3 nohead
set arrow from 100925,119 to 216810,119 ls 3 nohead
set arrow from 101534,120 to 178339,120 ls 3 nohead
set arrow from 102135,121 to 134778,121 ls 3 nohead
set arrow from 102481,122 to 135246,122 ls 3 nohead
set arrow from 108354,123 to 124469,123 ls 3 nohead
set arrow from 109085,124 to 261396,124 ls 3 nohead
set arrow from 110192,125 to 154206,125 ls 3 nohead
set arrow from 113056,126 to 190694,126 ls 3 nohead
set arrow from 116726,127 to 254434,127 ls 3 nohead
set ytics (64,128)
set xrange [0:254434]
set yrange [0:128]
set output "../Experiments/midasExp/leaflet-finder/Spark/AppData/atoms131072/ScipyDist/spcolfsci_64_1/unit.000000/app-20170119202928-0000_0_simulated_waterfall.pdf"
plot -1
