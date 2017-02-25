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

set arrow from 0,0 to 5849,0 ls 3 nohead
set arrow from 0,1 to 10715,1 ls 3 nohead
set arrow from 0,2 to 39519,2 ls 3 nohead
set arrow from 0,3 to 18382,3 ls 3 nohead
set arrow from 0,4 to 19836,4 ls 3 nohead
set arrow from 0,5 to 16402,5 ls 3 nohead
set arrow from 0,6 to 16703,6 ls 3 nohead
set arrow from 0,7 to 24895,7 ls 3 nohead
set arrow from 0,8 to 11313,8 ls 3 nohead
set arrow from 0,9 to 24732,9 ls 3 nohead
set arrow from 0,10 to 34433,10 ls 3 nohead
set arrow from 0,11 to 35534,11 ls 3 nohead
set arrow from 0,12 to 22729,12 ls 3 nohead
set arrow from 0,13 to 37369,13 ls 3 nohead
set arrow from 0,14 to 43722,14 ls 3 nohead
set arrow from 0,15 to 6225,15 ls 3 nohead
set arrow from 0,16 to 26783,16 ls 3 nohead
set arrow from 0,17 to 14581,17 ls 3 nohead
set arrow from 0,18 to 27914,18 ls 3 nohead
set arrow from 0,19 to 20847,19 ls 3 nohead
set arrow from 0,20 to 23407,20 ls 3 nohead
set arrow from 0,21 to 25268,21 ls 3 nohead
set arrow from 0,22 to 23272,22 ls 3 nohead
set arrow from 0,23 to 24902,23 ls 3 nohead
set arrow from 0,24 to 6412,24 ls 3 nohead
set arrow from 0,25 to 6665,25 ls 3 nohead
set arrow from 0,26 to 16693,26 ls 3 nohead
set arrow from 0,27 to 11490,27 ls 3 nohead
set arrow from 0,28 to 9413,28 ls 3 nohead
set arrow from 0,29 to 31958,29 ls 3 nohead
set arrow from 0,30 to 12228,30 ls 3 nohead
set arrow from 0,31 to 17394,31 ls 3 nohead
set arrow from 0,32 to 34202,32 ls 3 nohead
set arrow from 0,33 to 14677,33 ls 3 nohead
set arrow from 0,34 to 31596,34 ls 3 nohead
set arrow from 0,35 to 42272,35 ls 3 nohead
set arrow from 0,36 to 25708,36 ls 3 nohead
set arrow from 0,37 to 28230,37 ls 3 nohead
set arrow from 0,38 to 23197,38 ls 3 nohead
set arrow from 0,39 to 30692,39 ls 3 nohead
set arrow from 0,40 to 21567,40 ls 3 nohead
set arrow from 0,41 to 31184,41 ls 3 nohead
set arrow from 0,42 to 33787,42 ls 3 nohead
set arrow from 0,43 to 8700,43 ls 3 nohead
set arrow from 0,44 to 28932,44 ls 3 nohead
set arrow from 0,45 to 10277,45 ls 3 nohead
set arrow from 0,46 to 15231,46 ls 3 nohead
set arrow from 0,47 to 26464,47 ls 3 nohead
set arrow from 0,48 to 23987,48 ls 3 nohead
set arrow from 0,49 to 28281,49 ls 3 nohead
set arrow from 0,50 to 11068,50 ls 3 nohead
set arrow from 0,51 to 11881,51 ls 3 nohead
set arrow from 0,52 to 5572,52 ls 3 nohead
set arrow from 0,53 to 17579,53 ls 3 nohead
set arrow from 0,54 to 9863,54 ls 3 nohead
set arrow from 0,55 to 24125,55 ls 3 nohead
set arrow from 0,56 to 11865,56 ls 3 nohead
set arrow from 0,57 to 32598,57 ls 3 nohead
set arrow from 0,58 to 32920,58 ls 3 nohead
set arrow from 0,59 to 8800,59 ls 3 nohead
set arrow from 0,60 to 26374,60 ls 3 nohead
set arrow from 0,61 to 29626,61 ls 3 nohead
set arrow from 0,62 to 26590,62 ls 3 nohead
set arrow from 0,63 to 27774,63 ls 3 nohead
set arrow from 0,64 to 29092,64 ls 3 nohead
set arrow from 0,65 to 32751,65 ls 3 nohead
set arrow from 0,66 to 11557,66 ls 3 nohead
set arrow from 0,67 to 12506,67 ls 3 nohead
set arrow from 0,68 to 18778,68 ls 3 nohead
set arrow from 0,69 to 3740,69 ls 3 nohead
set arrow from 0,70 to 35292,70 ls 3 nohead
set arrow from 0,71 to 35969,71 ls 3 nohead
set arrow from 0,72 to 19984,72 ls 3 nohead
set arrow from 0,73 to 21971,73 ls 3 nohead
set arrow from 0,74 to 4775,74 ls 3 nohead
set arrow from 0,75 to 17713,75 ls 3 nohead
set arrow from 0,76 to 6258,76 ls 3 nohead
set arrow from 0,77 to 18338,77 ls 3 nohead
set arrow from 0,78 to 37133,78 ls 3 nohead
set arrow from 0,79 to 22804,79 ls 3 nohead
set arrow from 0,80 to 31492,80 ls 3 nohead
set arrow from 0,81 to 13561,81 ls 3 nohead
set arrow from 0,82 to 16822,82 ls 3 nohead
set arrow from 0,83 to 30869,83 ls 3 nohead
set arrow from 0,84 to 7869,84 ls 3 nohead
set arrow from 0,85 to 26065,85 ls 3 nohead
set arrow from 0,86 to 36737,86 ls 3 nohead
set arrow from 0,87 to 14029,87 ls 3 nohead
set arrow from 0,88 to 39720,88 ls 3 nohead
set arrow from 0,89 to 17392,89 ls 3 nohead
set arrow from 0,90 to 36195,90 ls 3 nohead
set arrow from 0,91 to 13428,91 ls 3 nohead
set arrow from 0,92 to 13996,92 ls 3 nohead
set arrow from 0,93 to 29615,93 ls 3 nohead
set arrow from 0,94 to 4737,94 ls 3 nohead
set arrow from 0,95 to 5705,95 ls 3 nohead
set arrow from 0,96 to 14358,96 ls 3 nohead
set arrow from 0,97 to 10831,97 ls 3 nohead
set arrow from 0,98 to 40998,98 ls 3 nohead
set arrow from 0,99 to 11323,99 ls 3 nohead
set arrow from 0,100 to 26857,100 ls 3 nohead
set arrow from 0,101 to 24146,101 ls 3 nohead
set arrow from 0,102 to 25155,102 ls 3 nohead
set arrow from 0,103 to 5038,103 ls 3 nohead
set arrow from 0,104 to 5380,104 ls 3 nohead
set arrow from 0,105 to 23417,105 ls 3 nohead
set arrow from 0,106 to 29464,106 ls 3 nohead
set arrow from 0,107 to 39126,107 ls 3 nohead
set arrow from 0,108 to 4975,108 ls 3 nohead
set arrow from 0,109 to 15431,109 ls 3 nohead
set arrow from 0,110 to 29942,110 ls 3 nohead
set arrow from 0,111 to 16015,111 ls 3 nohead
set arrow from 0,112 to 45194,112 ls 3 nohead
set arrow from 0,113 to 22655,113 ls 3 nohead
set arrow from 0,114 to 33231,114 ls 3 nohead
set arrow from 0,115 to 7416,115 ls 3 nohead
set arrow from 0,116 to 12800,116 ls 3 nohead
set arrow from 0,117 to 35955,117 ls 3 nohead
set arrow from 0,118 to 20777,118 ls 3 nohead
set arrow from 3740,119 to 31156,119 ls 3 nohead
set arrow from 4737,120 to 25622,120 ls 3 nohead
set arrow from 4775,121 to 37558,121 ls 3 nohead
set arrow from 4975,122 to 10138,122 ls 3 nohead
set arrow from 5038,123 to 24339,123 ls 3 nohead
set arrow from 5380,124 to 37137,124 ls 3 nohead
set arrow from 5572,125 to 23454,125 ls 3 nohead
set arrow from 5705,126 to 26048,126 ls 3 nohead
set arrow from 5849,127 to 27005,127 ls 3 nohead
set arrow from 6225,128 to 18988,128 ls 3 nohead
set arrow from 6258,129 to 29298,129 ls 3 nohead
set arrow from 6412,130 to 20041,130 ls 3 nohead
set arrow from 6665,131 to 22311,131 ls 3 nohead
set arrow from 7416,132 to 11309,132 ls 3 nohead
set arrow from 7869,133 to 36491,133 ls 3 nohead
set arrow from 8700,134 to 38831,134 ls 3 nohead
set arrow from 8800,135 to 17518,135 ls 3 nohead
set arrow from 9413,136 to 41416,136 ls 3 nohead
set arrow from 9863,137 to 42244,137 ls 3 nohead
set arrow from 10138,138 to 27829,138 ls 3 nohead
set arrow from 10277,139 to 36359,139 ls 3 nohead
set arrow from 10715,140 to 20291,140 ls 3 nohead
set arrow from 10831,141 to 25710,141 ls 3 nohead
set arrow from 11068,142 to 19427,142 ls 3 nohead
set arrow from 11309,143 to 37139,143 ls 3 nohead
set arrow from 11313,144 to 45714,144 ls 3 nohead
set arrow from 11323,145 to 18550,145 ls 3 nohead
set arrow from 11490,146 to 19171,146 ls 3 nohead
set arrow from 11557,147 to 21180,147 ls 3 nohead
set arrow from 11865,148 to 25758,148 ls 3 nohead
set arrow from 11881,149 to 46706,149 ls 3 nohead
set arrow from 12228,150 to 28084,150 ls 3 nohead
set arrow from 12506,151 to 44922,151 ls 3 nohead
set arrow from 12800,152 to 22263,152 ls 3 nohead
set arrow from 13428,153 to 25460,153 ls 3 nohead
set arrow from 13561,154 to 33019,154 ls 3 nohead
set arrow from 13996,155 to 26075,155 ls 3 nohead
set arrow from 14029,156 to 39084,156 ls 3 nohead
set arrow from 14358,157 to 20058,157 ls 3 nohead
set arrow from 14581,158 to 39845,158 ls 3 nohead
set arrow from 14677,159 to 21743,159 ls 3 nohead
set arrow from 15231,160 to 36994,160 ls 3 nohead
set arrow from 15431,161 to 50848,161 ls 3 nohead
set arrow from 16015,162 to 22006,162 ls 3 nohead
set arrow from 16402,163 to 30171,163 ls 3 nohead
set arrow from 16693,164 to 32896,164 ls 3 nohead
set arrow from 16703,165 to 21344,165 ls 3 nohead
set arrow from 16822,166 to 24738,166 ls 3 nohead
set arrow from 17392,167 to 32251,167 ls 3 nohead
set arrow from 17394,168 to 47640,168 ls 3 nohead
set arrow from 17518,169 to 44440,169 ls 3 nohead
set arrow from 17579,170 to 48702,170 ls 3 nohead
set arrow from 17713,171 to 26257,171 ls 3 nohead
set arrow from 18338,172 to 41911,172 ls 3 nohead
set arrow from 18382,173 to 49189,173 ls 3 nohead
set arrow from 18550,174 to 22974,174 ls 3 nohead
set arrow from 18778,175 to 25687,175 ls 3 nohead
set arrow from 18988,176 to 41132,176 ls 3 nohead
set arrow from 19171,177 to 32491,177 ls 3 nohead
set arrow from 19427,178 to 48466,178 ls 3 nohead
set arrow from 19836,179 to 35125,179 ls 3 nohead
set arrow from 19984,180 to 48527,180 ls 3 nohead
set arrow from 20041,181 to 30051,181 ls 3 nohead
set arrow from 20058,182 to 34700,182 ls 3 nohead
set arrow from 20291,183 to 44792,183 ls 3 nohead
set arrow from 20777,184 to 48164,184 ls 3 nohead
set arrow from 20847,185 to 52129,185 ls 3 nohead
set arrow from 21180,186 to 58754,186 ls 3 nohead
set arrow from 21344,187 to 38137,187 ls 3 nohead
set arrow from 21567,188 to 42879,188 ls 3 nohead
set arrow from 21743,189 to 25639,189 ls 3 nohead
set arrow from 21971,190 to 45755,190 ls 3 nohead
set arrow from 22006,191 to 56670,191 ls 3 nohead
set arrow from 22263,192 to 26567,192 ls 3 nohead
set arrow from 22311,193 to 28296,193 ls 3 nohead
set arrow from 22655,194 to 43270,194 ls 3 nohead
set arrow from 22729,195 to 44667,195 ls 3 nohead
set arrow from 22804,196 to 44934,196 ls 3 nohead
set arrow from 22974,197 to 30151,197 ls 3 nohead
set arrow from 23197,198 to 61628,198 ls 3 nohead
set arrow from 23272,199 to 33025,199 ls 3 nohead
set arrow from 23407,200 to 51143,200 ls 3 nohead
set arrow from 23417,201 to 53500,201 ls 3 nohead
set arrow from 23454,202 to 34304,202 ls 3 nohead
set arrow from 23987,203 to 48436,203 ls 3 nohead
set arrow from 24125,204 to 43009,204 ls 3 nohead
set arrow from 24146,205 to 58022,205 ls 3 nohead
set arrow from 24339,206 to 59574,206 ls 3 nohead
set arrow from 24732,207 to 45233,207 ls 3 nohead
set arrow from 24738,208 to 50950,208 ls 3 nohead
set arrow from 24895,209 to 55879,209 ls 3 nohead
set arrow from 24902,210 to 58990,210 ls 3 nohead
set arrow from 25155,211 to 63013,211 ls 3 nohead
set arrow from 25268,212 to 52462,212 ls 3 nohead
set arrow from 25460,213 to 59137,213 ls 3 nohead
set arrow from 25622,214 to 45044,214 ls 3 nohead
set arrow from 25639,215 to 58979,215 ls 3 nohead
set arrow from 25687,216 to 63588,216 ls 3 nohead
set arrow from 25708,217 to 32463,217 ls 3 nohead
set arrow from 25710,218 to 53681,218 ls 3 nohead
set arrow from 25758,219 to 61452,219 ls 3 nohead
set arrow from 26048,220 to 56515,220 ls 3 nohead
set arrow from 26065,221 to 59008,221 ls 3 nohead
set arrow from 26075,222 to 45870,222 ls 3 nohead
set arrow from 26257,223 to 47465,223 ls 3 nohead
set arrow from 26374,224 to 47778,224 ls 3 nohead
set arrow from 26464,225 to 52282,225 ls 3 nohead
set arrow from 26567,226 to 55776,226 ls 3 nohead
set arrow from 26590,227 to 34345,227 ls 3 nohead
set arrow from 26783,228 to 55597,228 ls 3 nohead
set arrow from 26857,229 to 63197,229 ls 3 nohead
set arrow from 27005,230 to 46085,230 ls 3 nohead
set arrow from 27774,231 to 51318,231 ls 3 nohead
set arrow from 27829,232 to 37070,232 ls 3 nohead
set arrow from 27914,233 to 68653,233 ls 3 nohead
set arrow from 28084,234 to 32309,234 ls 3 nohead
set arrow from 28230,235 to 40555,235 ls 3 nohead
set arrow from 28281,236 to 43614,236 ls 3 nohead
set arrow from 28296,237 to 44414,237 ls 3 nohead
set arrow from 28932,238 to 58248,238 ls 3 nohead
set arrow from 29092,239 to 48077,239 ls 3 nohead
set arrow from 29298,240 to 48567,240 ls 3 nohead
set arrow from 29464,241 to 39815,241 ls 3 nohead
set arrow from 29615,242 to 43146,242 ls 3 nohead
set arrow from 29626,243 to 46767,243 ls 3 nohead
set arrow from 29942,244 to 57467,244 ls 3 nohead
set arrow from 30051,245 to 38127,245 ls 3 nohead
set arrow from 30151,246 to 48331,246 ls 3 nohead
set arrow from 30171,247 to 40455,247 ls 3 nohead
set arrow from 30692,248 to 43272,248 ls 3 nohead
set arrow from 30869,249 to 38928,249 ls 3 nohead
set arrow from 31156,250 to 49276,250 ls 3 nohead
set arrow from 31184,251 to 63814,251 ls 3 nohead
set arrow from 31492,252 to 36284,252 ls 3 nohead
set arrow from 31596,253 to 53913,253 ls 3 nohead
set arrow from 31958,254 to 66180,254 ls 3 nohead
set arrow from 32251,255 to 52249,255 ls 3 nohead
set ytics (256)
set xrange [0:52249]
set yrange [0:256]
set output "../Experiments/midasExp/leaflet-finder/Spark/AppData/atoms131072/ScipyDist/spcolfsci_256_1/unit.000000/app-20170119210153-0000_1_simulated_waterfall.pdf"
plot -1
