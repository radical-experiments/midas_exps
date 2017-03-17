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

set arrow from 0,0 to 3740,0 ls 3 nohead
set arrow from 0,1 to 3893,1 ls 3 nohead
set arrow from 0,2 to 3896,2 ls 3 nohead
set arrow from 0,3 to 4225,3 ls 3 nohead
set arrow from 0,4 to 4304,4 ls 3 nohead
set arrow from 0,5 to 4424,5 ls 3 nohead
set arrow from 0,6 to 4641,6 ls 3 nohead
set arrow from 0,7 to 4737,7 ls 3 nohead
set arrow from 0,8 to 4775,8 ls 3 nohead
set arrow from 0,9 to 4792,9 ls 3 nohead
set arrow from 0,10 to 4975,10 ls 3 nohead
set arrow from 0,11 to 5038,11 ls 3 nohead
set arrow from 0,12 to 5163,12 ls 3 nohead
set arrow from 0,13 to 5380,13 ls 3 nohead
set arrow from 0,14 to 5572,14 ls 3 nohead
set arrow from 0,15 to 5705,15 ls 3 nohead
set arrow from 0,16 to 5700,16 ls 3 nohead
set arrow from 0,17 to 5849,17 ls 3 nohead
set arrow from 0,18 to 5991,18 ls 3 nohead
set arrow from 0,19 to 5985,19 ls 3 nohead
set arrow from 0,20 to 6225,20 ls 3 nohead
set arrow from 0,21 to 6258,21 ls 3 nohead
set arrow from 0,22 to 6412,22 ls 3 nohead
set arrow from 0,23 to 6665,23 ls 3 nohead
set arrow from 0,24 to 6755,24 ls 3 nohead
set arrow from 0,25 to 6909,25 ls 3 nohead
set arrow from 0,26 to 7066,26 ls 3 nohead
set arrow from 0,27 to 7177,27 ls 3 nohead
set arrow from 0,28 to 7227,28 ls 3 nohead
set arrow from 0,29 to 7416,29 ls 3 nohead
set arrow from 0,30 to 7681,30 ls 3 nohead
set arrow from 0,31 to 7755,31 ls 3 nohead
set arrow from 0,32 to 7869,32 ls 3 nohead
set arrow from 0,33 to 7916,33 ls 3 nohead
set arrow from 0,34 to 8059,34 ls 3 nohead
set arrow from 0,35 to 8076,35 ls 3 nohead
set arrow from 0,36 to 8359,36 ls 3 nohead
set arrow from 0,37 to 8544,37 ls 3 nohead
set arrow from 0,38 to 8700,38 ls 3 nohead
set arrow from 0,39 to 8718,39 ls 3 nohead
set arrow from 0,40 to 8800,40 ls 3 nohead
set arrow from 0,41 to 9241,41 ls 3 nohead
set arrow from 0,42 to 9413,42 ls 3 nohead
set arrow from 0,43 to 9463,43 ls 3 nohead
set arrow from 0,44 to 9576,44 ls 3 nohead
set arrow from 0,45 to 9623,45 ls 3 nohead
set arrow from 0,46 to 9753,46 ls 3 nohead
set arrow from 0,47 to 9863,47 ls 3 nohead
set arrow from 0,48 to 10010,48 ls 3 nohead
set arrow from 0,49 to 10277,49 ls 3 nohead
set arrow from 0,50 to 10284,50 ls 3 nohead
set arrow from 0,51 to 10351,51 ls 3 nohead
set arrow from 0,52 to 10715,52 ls 3 nohead
set arrow from 0,53 to 10831,53 ls 3 nohead
set arrow from 0,54 to 10850,54 ls 3 nohead
set arrow from 0,55 to 11068,55 ls 3 nohead
set arrow from 0,56 to 11313,56 ls 3 nohead
set arrow from 0,57 to 11323,57 ls 3 nohead
set arrow from 0,58 to 11490,58 ls 3 nohead
set arrow from 0,59 to 11557,59 ls 3 nohead
set arrow from 0,60 to 11865,60 ls 3 nohead
set arrow from 0,61 to 11881,61 ls 3 nohead
set arrow from 0,62 to 12032,62 ls 3 nohead
set arrow from 0,63 to 12079,63 ls 3 nohead
set arrow from 0,64 to 12228,64 ls 3 nohead
set arrow from 0,65 to 12325,65 ls 3 nohead
set arrow from 0,66 to 12506,66 ls 3 nohead
set arrow from 0,67 to 12580,67 ls 3 nohead
set arrow from 0,68 to 12763,68 ls 3 nohead
set arrow from 0,69 to 12800,69 ls 3 nohead
set arrow from 0,70 to 13320,70 ls 3 nohead
set arrow from 0,71 to 13428,71 ls 3 nohead
set arrow from 0,72 to 13561,72 ls 3 nohead
set arrow from 0,73 to 13531,73 ls 3 nohead
set arrow from 0,74 to 13629,74 ls 3 nohead
set arrow from 0,75 to 13769,75 ls 3 nohead
set arrow from 0,76 to 13893,76 ls 3 nohead
set arrow from 0,77 to 13996,77 ls 3 nohead
set arrow from 0,78 to 14029,78 ls 3 nohead
set arrow from 0,79 to 14358,79 ls 3 nohead
set arrow from 0,80 to 14581,80 ls 3 nohead
set arrow from 0,81 to 14677,81 ls 3 nohead
set arrow from 0,82 to 14642,82 ls 3 nohead
set arrow from 0,83 to 14859,83 ls 3 nohead
set arrow from 0,84 to 14879,84 ls 3 nohead
set arrow from 0,85 to 15231,85 ls 3 nohead
set arrow from 0,86 to 15289,86 ls 3 nohead
set arrow from 0,87 to 15333,87 ls 3 nohead
set arrow from 0,88 to 15431,88 ls 3 nohead
set arrow from 0,89 to 15646,89 ls 3 nohead
set arrow from 0,90 to 15856,90 ls 3 nohead
set arrow from 0,91 to 16015,91 ls 3 nohead
set arrow from 0,92 to 16118,92 ls 3 nohead
set arrow from 0,93 to 16203,93 ls 3 nohead
set arrow from 0,94 to 16402,94 ls 3 nohead
set arrow from 0,95 to 16693,95 ls 3 nohead
set arrow from 0,96 to 16703,96 ls 3 nohead
set arrow from 0,97 to 16822,97 ls 3 nohead
set arrow from 0,98 to 16793,98 ls 3 nohead
set arrow from 0,99 to 17141,99 ls 3 nohead
set arrow from 0,100 to 17394,100 ls 3 nohead
set arrow from 0,101 to 17392,101 ls 3 nohead
set arrow from 0,102 to 17579,102 ls 3 nohead
set arrow from 0,103 to 17713,103 ls 3 nohead
set arrow from 0,104 to 17691,104 ls 3 nohead
set arrow from 0,105 to 17882,105 ls 3 nohead
set arrow from 0,106 to 18120,106 ls 3 nohead
set arrow from 0,107 to 18180,107 ls 3 nohead
set arrow from 0,108 to 18338,108 ls 3 nohead
set arrow from 0,109 to 18382,109 ls 3 nohead
set arrow from 0,110 to 18778,110 ls 3 nohead
set arrow from 0,111 to 18884,111 ls 3 nohead
set arrow from 0,112 to 18985,112 ls 3 nohead
set arrow from 0,113 to 19080,113 ls 3 nohead
set arrow from 0,114 to 19301,114 ls 3 nohead
set arrow from 0,115 to 19269,115 ls 3 nohead
set arrow from 0,116 to 19422,116 ls 3 nohead
set arrow from 0,117 to 19458,117 ls 3 nohead
set arrow from 0,118 to 19836,118 ls 3 nohead
set arrow from 3740,119 to 23535,119 ls 3 nohead
set arrow from 3893,120 to 23877,120 ls 3 nohead
set arrow from 3896,121 to 23894,121 ls 3 nohead
set arrow from 4225,122 to 24568,122 ls 3 nohead
set arrow from 4304,123 to 24805,123 ls 3 nohead
set arrow from 4424,124 to 25039,124 ls 3 nohead
set arrow from 4641,125 to 25418,125 ls 3 nohead
set arrow from 4737,126 to 25584,126 ls 3 nohead
set arrow from 4775,127 to 25660,127 ls 3 nohead
set arrow from 4792,128 to 25948,128 ls 3 nohead
set arrow from 4975,129 to 26183,129 ls 3 nohead
set arrow from 5038,130 to 26350,130 ls 3 nohead
set arrow from 5163,131 to 26567,131 ls 3 nohead
set arrow from 5380,132 to 26947,132 ls 3 nohead
set arrow from 5572,133 to 27335,133 ls 3 nohead
set arrow from 5700,134 to 27671,134 ls 3 nohead
set arrow from 5705,135 to 27643,135 ls 3 nohead
set arrow from 5849,136 to 27979,136 ls 3 nohead
set arrow from 5985,137 to 28129,137 ls 3 nohead
set arrow from 5991,138 to 28308,138 ls 3 nohead
set arrow from 6225,139 to 28880,139 ls 3 nohead
set arrow from 6258,140 to 28987,140 ls 3 nohead
set arrow from 6412,141 to 29216,141 ls 3 nohead
set arrow from 6665,142 to 29705,142 ls 3 nohead
set arrow from 6755,143 to 29952,143 ls 3 nohead
set arrow from 6909,144 to 30181,144 ls 3 nohead
set arrow from 7066,145 to 30473,145 ls 3 nohead
set arrow from 7177,146 to 30594,146 ls 3 nohead
set arrow from 7227,147 to 30771,147 ls 3 nohead
set arrow from 7416,148 to 30989,148 ls 3 nohead
set arrow from 7681,149 to 31465,149 ls 3 nohead
set arrow from 7755,150 to 31742,150 ls 3 nohead
set arrow from 7869,151 to 31994,151 ls 3 nohead
set arrow from 7916,152 to 32062,152 ls 3 nohead
set arrow from 8059,153 to 32508,153 ls 3 nohead
set arrow from 8076,154 to 32577,154 ls 3 nohead
set arrow from 8359,155 to 33091,155 ls 3 nohead
set arrow from 8544,156 to 33439,156 ls 3 nohead
set arrow from 8700,157 to 33602,157 ls 3 nohead
set arrow from 8718,158 to 33773,158 ls 3 nohead
set arrow from 8800,159 to 33955,159 ls 3 nohead
set arrow from 9241,160 to 34509,160 ls 3 nohead
set arrow from 9413,161 to 34677,161 ls 3 nohead
set arrow from 9463,162 to 35171,162 ls 3 nohead
set arrow from 9576,163 to 35406,163 ls 3 nohead
set arrow from 9623,164 to 35441,164 ls 3 nohead
set arrow from 9753,165 to 35818,165 ls 3 nohead
set arrow from 9863,166 to 35945,166 ls 3 nohead
set arrow from 10010,167 to 36222,167 ls 3 nohead
set arrow from 10277,168 to 36651,168 ls 3 nohead
set arrow from 10284,169 to 36748,169 ls 3 nohead
set arrow from 10351,170 to 36941,170 ls 3 nohead
set arrow from 10715,171 to 37498,171 ls 3 nohead
set arrow from 10831,172 to 37688,172 ls 3 nohead
set arrow from 10850,173 to 37772,173 ls 3 nohead
set arrow from 11068,174 to 38262,174 ls 3 nohead
set arrow from 11313,175 to 38700,175 ls 3 nohead
set arrow from 11323,176 to 38739,176 ls 3 nohead
set arrow from 11490,177 to 39015,177 ls 3 nohead
set arrow from 11557,178 to 39331,178 ls 3 nohead
set arrow from 11865,179 to 39601,179 ls 3 nohead
set arrow from 11881,180 to 39795,180 ls 3 nohead
set arrow from 12032,181 to 40003,181 ls 3 nohead
set arrow from 12079,182 to 40309,182 ls 3 nohead
set arrow from 12228,183 to 40509,183 ls 3 nohead
set arrow from 12325,184 to 40868,184 ls 3 nohead
set arrow from 12506,185 to 41128,185 ls 3 nohead
set arrow from 12580,186 to 41394,186 ls 3 nohead
set arrow from 12763,187 to 41695,187 ls 3 nohead
set arrow from 12800,188 to 41839,188 ls 3 nohead
set arrow from 13320,189 to 42412,189 ls 3 nohead
set arrow from 13428,190 to 42637,190 ls 3 nohead
set arrow from 13531,191 to 42847,191 ls 3 nohead
set arrow from 13561,192 to 43025,192 ls 3 nohead
set arrow from 13629,193 to 43255,193 ls 3 nohead
set arrow from 13769,194 to 43384,194 ls 3 nohead
set arrow from 13893,195 to 43835,195 ls 3 nohead
set arrow from 13996,196 to 44079,196 ls 3 nohead
set arrow from 14029,197 to 44160,197 ls 3 nohead
set arrow from 14358,198 to 44604,198 ls 3 nohead
set arrow from 14581,199 to 45048,199 ls 3 nohead
set arrow from 14642,200 to 45334,200 ls 3 nohead
set arrow from 14677,201 to 45484,201 ls 3 nohead
set arrow from 14859,202 to 45728,202 ls 3 nohead
set arrow from 14879,203 to 45863,203 ls 3 nohead
set arrow from 15231,204 to 46354,204 ls 3 nohead
set arrow from 15289,205 to 46473,205 ls 3 nohead
set arrow from 15333,206 to 46615,206 ls 3 nohead
set arrow from 15431,207 to 46923,207 ls 3 nohead
set arrow from 15646,208 to 47242,208 ls 3 nohead
set arrow from 15856,209 to 47613,209 ls 3 nohead
set arrow from 16015,210 to 47973,210 ls 3 nohead
set arrow from 16118,211 to 48121,211 ls 3 nohead
set arrow from 16203,212 to 48584,212 ls 3 nohead
set arrow from 16402,213 to 48818,213 ls 3 nohead
set arrow from 16693,214 to 49291,214 ls 3 nohead
set arrow from 16703,215 to 49333,215 ls 3 nohead
set arrow from 16793,216 to 49544,216 ls 3 nohead
set arrow from 16822,217 to 49605,217 ls 3 nohead
set arrow from 17141,218 to 50061,218 ls 3 nohead
set arrow from 17392,219 to 50335,219 ls 3 nohead
set arrow from 17394,220 to 50625,220 ls 3 nohead
set arrow from 17579,221 to 50919,221 ls 3 nohead
set arrow from 17691,222 to 51368,222 ls 3 nohead
set arrow from 17713,223 to 51500,223 ls 3 nohead
set arrow from 17882,224 to 51758,224 ls 3 nohead
set arrow from 18120,225 to 52208,225 ls 3 nohead
set arrow from 18180,226 to 52382,226 ls 3 nohead
set arrow from 18338,227 to 52560,227 ls 3 nohead
set arrow from 18382,228 to 52815,228 ls 3 nohead
set arrow from 18778,229 to 53179,229 ls 3 nohead
set arrow from 18884,230 to 53548,230 ls 3 nohead
set arrow from 18985,231 to 53810,231 ls 3 nohead
set arrow from 19080,232 to 54315,232 ls 3 nohead
set arrow from 19269,233 to 54561,233 ls 3 nohead
set arrow from 19301,234 to 54718,234 ls 3 nohead
set arrow from 19422,235 to 54956,235 ls 3 nohead
set arrow from 19458,236 to 55152,236 ls 3 nohead
set arrow from 19836,237 to 55805,237 ls 3 nohead
set arrow from 23535,238 to 59490,238 ls 3 nohead
set arrow from 23877,239 to 60072,239 ls 3 nohead
set arrow from 23894,240 to 60234,240 ls 3 nohead
set arrow from 24568,241 to 61305,241 ls 3 nohead
set arrow from 24805,242 to 61938,242 ls 3 nohead
set arrow from 25039,243 to 62408,243 ls 3 nohead
set arrow from 25418,244 to 62992,244 ls 3 nohead
set arrow from 25584,245 to 63442,245 ls 3 nohead
set arrow from 25660,246 to 63561,246 ls 3 nohead
set arrow from 25948,247 to 64379,247 ls 3 nohead
set arrow from 26183,248 to 65309,248 ls 3 nohead
set arrow from 26350,249 to 65869,249 ls 3 nohead
set arrow from 26567,250 to 66287,250 ls 3 nohead
set arrow from 26947,251 to 67686,251 ls 3 nohead
set arrow from 27335,252 to 68333,252 ls 3 nohead
set arrow from 27643,253 to 69915,253 ls 3 nohead
set arrow from 27671,254 to 71393,254 ls 3 nohead
set arrow from 27979,255 to 73173,255 ls 3 nohead
set ytics (256)
set xrange [0:73173]
set yrange [0:256]
set output "../Experiments/midasExp/leaflet-finder/Spark/AppData/atoms131072/ScipyDist/spcolfsci_256_1/unit.000000/app-20170119210153-0000_1_sim_median_progress_rate_waterfall.pdf"
plot -1
