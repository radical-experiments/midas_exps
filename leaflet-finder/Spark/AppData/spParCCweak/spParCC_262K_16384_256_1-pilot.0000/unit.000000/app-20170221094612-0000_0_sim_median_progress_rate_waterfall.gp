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

set arrow from 0,0 to 61282,0 ls 3 nohead
set arrow from 0,1 to 61285,1 ls 3 nohead
set arrow from 0,2 to 61297,2 ls 3 nohead
set arrow from 0,3 to 61333,3 ls 3 nohead
set arrow from 0,4 to 61370,4 ls 3 nohead
set arrow from 0,5 to 61377,5 ls 3 nohead
set arrow from 0,6 to 61429,6 ls 3 nohead
set arrow from 0,7 to 61435,7 ls 3 nohead
set arrow from 0,8 to 61486,8 ls 3 nohead
set arrow from 0,9 to 61514,9 ls 3 nohead
set arrow from 0,10 to 61499,10 ls 3 nohead
set arrow from 0,11 to 61501,11 ls 3 nohead
set arrow from 0,12 to 61533,12 ls 3 nohead
set arrow from 0,13 to 61548,13 ls 3 nohead
set arrow from 0,14 to 61547,14 ls 3 nohead
set arrow from 0,15 to 61489,15 ls 3 nohead
set arrow from 0,16 to 61478,16 ls 3 nohead
set arrow from 0,17 to 61481,17 ls 3 nohead
set arrow from 0,18 to 61570,18 ls 3 nohead
set arrow from 0,19 to 61575,19 ls 3 nohead
set arrow from 0,20 to 61507,20 ls 3 nohead
set arrow from 0,21 to 61593,21 ls 3 nohead
set arrow from 0,22 to 61518,22 ls 3 nohead
set arrow from 0,23 to 61602,23 ls 3 nohead
set arrow from 0,24 to 61617,24 ls 3 nohead
set arrow from 0,25 to 61531,25 ls 3 nohead
set arrow from 0,26 to 61543,26 ls 3 nohead
set arrow from 0,27 to 61533,27 ls 3 nohead
set arrow from 0,28 to 61539,28 ls 3 nohead
set arrow from 0,29 to 61540,29 ls 3 nohead
set arrow from 0,30 to 61564,30 ls 3 nohead
set arrow from 0,31 to 61573,31 ls 3 nohead
set arrow from 0,32 to 61575,32 ls 3 nohead
set arrow from 0,33 to 61566,33 ls 3 nohead
set arrow from 0,34 to 61571,34 ls 3 nohead
set arrow from 0,35 to 61642,35 ls 3 nohead
set arrow from 0,36 to 61616,36 ls 3 nohead
set arrow from 0,37 to 61602,37 ls 3 nohead
set arrow from 0,38 to 61607,38 ls 3 nohead
set arrow from 0,39 to 61627,39 ls 3 nohead
set arrow from 0,40 to 61645,40 ls 3 nohead
set arrow from 0,41 to 61638,41 ls 3 nohead
set arrow from 0,42 to 61772,42 ls 3 nohead
set arrow from 0,43 to 61717,43 ls 3 nohead
set arrow from 0,44 to 61608,44 ls 3 nohead
set arrow from 0,45 to 61604,45 ls 3 nohead
set arrow from 0,46 to 61630,46 ls 3 nohead
set arrow from 0,47 to 61625,47 ls 3 nohead
set arrow from 0,48 to 61643,48 ls 3 nohead
set arrow from 0,49 to 61655,49 ls 3 nohead
set arrow from 0,50 to 61653,50 ls 3 nohead
set arrow from 0,51 to 61672,51 ls 3 nohead
set arrow from 0,52 to 61773,52 ls 3 nohead
set arrow from 0,53 to 61673,53 ls 3 nohead
set arrow from 0,54 to 61701,54 ls 3 nohead
set arrow from 0,55 to 61715,55 ls 3 nohead
set arrow from 0,56 to 61728,56 ls 3 nohead
set arrow from 0,57 to 61756,57 ls 3 nohead
set arrow from 0,58 to 61747,58 ls 3 nohead
set arrow from 0,59 to 61613,59 ls 3 nohead
set arrow from 0,60 to 61612,60 ls 3 nohead
set arrow from 0,61 to 61656,61 ls 3 nohead
set arrow from 0,62 to 61657,62 ls 3 nohead
set arrow from 0,63 to 61821,63 ls 3 nohead
set arrow from 0,64 to 61679,64 ls 3 nohead
set arrow from 0,65 to 61833,65 ls 3 nohead
set arrow from 0,66 to 61744,66 ls 3 nohead
set arrow from 0,67 to 61743,67 ls 3 nohead
set arrow from 0,68 to 61749,68 ls 3 nohead
set arrow from 0,69 to 61896,69 ls 3 nohead
set arrow from 0,70 to 61774,70 ls 3 nohead
set arrow from 0,71 to 61775,71 ls 3 nohead
set arrow from 0,72 to 61802,72 ls 3 nohead
set arrow from 0,73 to 61967,73 ls 3 nohead
set arrow from 0,74 to 61821,74 ls 3 nohead
set arrow from 0,75 to 61820,75 ls 3 nohead
set arrow from 0,76 to 61879,76 ls 3 nohead
set arrow from 0,77 to 61986,77 ls 3 nohead
set arrow from 0,78 to 61991,78 ls 3 nohead
set arrow from 0,79 to 61975,79 ls 3 nohead
set arrow from 0,80 to 61952,80 ls 3 nohead
set arrow from 0,81 to 62048,81 ls 3 nohead
set arrow from 0,82 to 62050,82 ls 3 nohead
set arrow from 0,83 to 62089,83 ls 3 nohead
set arrow from 0,84 to 62122,84 ls 3 nohead
set arrow from 0,85 to 62123,85 ls 3 nohead
set arrow from 0,86 to 62142,86 ls 3 nohead
set arrow from 0,87 to 62147,87 ls 3 nohead
set arrow from 0,88 to 62174,88 ls 3 nohead
set arrow from 0,89 to 62469,89 ls 3 nohead
set arrow from 0,90 to 62488,90 ls 3 nohead
set arrow from 0,91 to 62473,91 ls 3 nohead
set arrow from 0,92 to 62519,92 ls 3 nohead
set arrow from 0,93 to 62540,93 ls 3 nohead
set arrow from 0,94 to 62545,94 ls 3 nohead
set arrow from 0,95 to 62588,95 ls 3 nohead
set arrow from 0,96 to 62598,96 ls 3 nohead
set arrow from 0,97 to 62561,97 ls 3 nohead
set arrow from 0,98 to 62589,98 ls 3 nohead
set arrow from 0,99 to 62584,99 ls 3 nohead
set arrow from 0,100 to 62539,100 ls 3 nohead
set arrow from 0,101 to 62777,101 ls 3 nohead
set arrow from 0,102 to 62654,102 ls 3 nohead
set arrow from 0,103 to 62666,103 ls 3 nohead
set arrow from 0,104 to 62629,104 ls 3 nohead
set arrow from 0,105 to 62775,105 ls 3 nohead
set arrow from 0,106 to 62633,106 ls 3 nohead
set arrow from 0,107 to 62785,107 ls 3 nohead
set arrow from 0,108 to 62654,108 ls 3 nohead
set arrow from 0,109 to 62815,109 ls 3 nohead
set arrow from 0,110 to 62582,110 ls 3 nohead
set arrow from 0,111 to 62667,111 ls 3 nohead
set arrow from 0,112 to 62658,112 ls 3 nohead
set arrow from 0,113 to 62829,113 ls 3 nohead
set arrow from 0,114 to 62588,114 ls 3 nohead
set arrow from 0,115 to 62826,115 ls 3 nohead
set arrow from 0,116 to 62821,116 ls 3 nohead
set arrow from 0,117 to 62841,117 ls 3 nohead
set arrow from 0,118 to 62723,118 ls 3 nohead
set arrow from 0,119 to 62623,119 ls 3 nohead
set arrow from 0,120 to 62844,120 ls 3 nohead
set arrow from 0,121 to 62699,121 ls 3 nohead
set arrow from 0,122 to 62716,122 ls 3 nohead
set arrow from 0,123 to 62710,123 ls 3 nohead
set arrow from 0,124 to 62647,124 ls 3 nohead
set arrow from 0,125 to 62662,125 ls 3 nohead
set arrow from 0,126 to 62688,126 ls 3 nohead
set arrow from 0,127 to 62691,127 ls 3 nohead
set arrow from 0,128 to 62655,128 ls 3 nohead
set arrow from 0,129 to 62651,129 ls 3 nohead
set arrow from 0,130 to 62675,130 ls 3 nohead
set arrow from 0,131 to 62744,131 ls 3 nohead
set arrow from 0,132 to 62933,132 ls 3 nohead
set arrow from 0,133 to 62674,133 ls 3 nohead
set arrow from 0,134 to 62987,134 ls 3 nohead
set arrow from 0,135 to 62711,135 ls 3 nohead
set arrow from 0,136 to 62742,136 ls 3 nohead
set arrow from 0,137 to 62747,137 ls 3 nohead
set arrow from 0,138 to 62754,138 ls 3 nohead
set arrow from 0,139 to 62790,139 ls 3 nohead
set arrow from 0,140 to 62747,140 ls 3 nohead
set arrow from 0,141 to 62808,141 ls 3 nohead
set arrow from 0,142 to 62731,142 ls 3 nohead
set arrow from 0,143 to 62749,143 ls 3 nohead
set arrow from 0,144 to 63023,144 ls 3 nohead
set arrow from 0,145 to 62781,145 ls 3 nohead
set arrow from 0,146 to 63023,146 ls 3 nohead
set arrow from 0,147 to 62790,147 ls 3 nohead
set arrow from 0,148 to 63042,148 ls 3 nohead
set arrow from 0,149 to 62794,149 ls 3 nohead
set arrow from 0,150 to 63030,150 ls 3 nohead
set arrow from 0,151 to 62769,151 ls 3 nohead
set arrow from 0,152 to 62854,152 ls 3 nohead
set arrow from 0,153 to 62774,153 ls 3 nohead
set arrow from 0,154 to 63047,154 ls 3 nohead
set arrow from 0,155 to 63052,155 ls 3 nohead
set arrow from 0,156 to 62947,156 ls 3 nohead
set arrow from 0,157 to 62880,157 ls 3 nohead
set arrow from 0,158 to 62811,158 ls 3 nohead
set arrow from 0,159 to 62796,159 ls 3 nohead
set arrow from 0,160 to 62834,160 ls 3 nohead
set arrow from 0,161 to 63101,161 ls 3 nohead
set arrow from 0,162 to 63041,162 ls 3 nohead
set arrow from 0,163 to 62896,163 ls 3 nohead
set arrow from 0,164 to 62881,164 ls 3 nohead
set arrow from 0,165 to 63175,165 ls 3 nohead
set arrow from 0,166 to 63057,166 ls 3 nohead
set arrow from 0,167 to 63075,167 ls 3 nohead
set arrow from 0,168 to 62896,168 ls 3 nohead
set arrow from 0,169 to 62894,169 ls 3 nohead
set arrow from 0,170 to 63167,170 ls 3 nohead
set arrow from 0,171 to 63177,171 ls 3 nohead
set arrow from 0,172 to 63018,172 ls 3 nohead
set arrow from 0,173 to 63031,173 ls 3 nohead
set arrow from 0,174 to 63048,174 ls 3 nohead
set arrow from 0,175 to 63133,175 ls 3 nohead
set arrow from 0,176 to 63196,176 ls 3 nohead
set arrow from 0,177 to 63300,177 ls 3 nohead
set arrow from 0,178 to 63137,178 ls 3 nohead
set arrow from 0,179 to 63299,179 ls 3 nohead
set arrow from 0,180 to 63152,180 ls 3 nohead
set arrow from 0,181 to 63304,181 ls 3 nohead
set arrow from 0,182 to 63218,182 ls 3 nohead
set arrow from 0,183 to 63328,183 ls 3 nohead
set arrow from 0,184 to 63346,184 ls 3 nohead
set arrow from 0,185 to 63074,185 ls 3 nohead
set arrow from 0,186 to 63377,186 ls 3 nohead
set arrow from 0,187 to 63381,187 ls 3 nohead
set arrow from 0,188 to 63228,188 ls 3 nohead
set arrow from 0,189 to 63395,189 ls 3 nohead
set arrow from 0,190 to 63239,190 ls 3 nohead
set arrow from 0,191 to 63404,191 ls 3 nohead
set arrow from 0,192 to 63139,192 ls 3 nohead
set arrow from 0,193 to 63261,193 ls 3 nohead
set arrow from 0,194 to 63275,194 ls 3 nohead
set arrow from 0,195 to 63160,195 ls 3 nohead
set arrow from 0,196 to 63438,196 ls 3 nohead
set arrow from 0,197 to 63186,197 ls 3 nohead
set arrow from 0,198 to 63294,198 ls 3 nohead
set arrow from 0,199 to 63171,199 ls 3 nohead
set arrow from 0,200 to 63182,200 ls 3 nohead
set arrow from 0,201 to 63195,201 ls 3 nohead
set arrow from 0,202 to 63127,202 ls 3 nohead
set arrow from 0,203 to 63220,203 ls 3 nohead
set arrow from 0,204 to 63509,204 ls 3 nohead
set arrow from 0,205 to 63137,205 ls 3 nohead
set arrow from 0,206 to 63549,206 ls 3 nohead
set arrow from 0,207 to 63195,207 ls 3 nohead
set arrow from 0,208 to 63329,208 ls 3 nohead
set arrow from 0,209 to 63208,209 ls 3 nohead
set arrow from 0,210 to 63287,210 ls 3 nohead
set arrow from 0,211 to 63240,211 ls 3 nohead
set arrow from 0,212 to 63239,212 ls 3 nohead
set arrow from 0,213 to 63268,213 ls 3 nohead
set arrow from 0,214 to 63303,214 ls 3 nohead
set arrow from 0,215 to 63310,215 ls 3 nohead
set arrow from 0,216 to 63322,216 ls 3 nohead
set arrow from 0,217 to 63394,217 ls 3 nohead
set arrow from 0,218 to 63636,218 ls 3 nohead
set arrow from 0,219 to 64240,219 ls 3 nohead
set arrow from 0,220 to 64264,220 ls 3 nohead
set arrow from 0,221 to 64269,221 ls 3 nohead
set arrow from 0,222 to 64286,222 ls 3 nohead
set arrow from 0,223 to 64304,223 ls 3 nohead
set arrow from 0,224 to 64330,224 ls 3 nohead
set arrow from 0,225 to 64335,225 ls 3 nohead
set arrow from 0,226 to 64342,226 ls 3 nohead
set arrow from 0,227 to 64335,227 ls 3 nohead
set arrow from 0,228 to 64436,228 ls 3 nohead
set arrow from 0,229 to 64648,229 ls 3 nohead
set arrow from 0,230 to 64674,230 ls 3 nohead
set arrow from 0,231 to 64736,231 ls 3 nohead
set arrow from 0,232 to 64727,232 ls 3 nohead
set arrow from 0,233 to 64729,233 ls 3 nohead
set arrow from 61282,234 to 126017,234 ls 3 nohead
set arrow from 61285,235 to 125899,235 ls 3 nohead
set arrow from 61297,236 to 126017,236 ls 3 nohead
set arrow from 61333,237 to 126082,237 ls 3 nohead
set arrow from 61370,238 to 126161,238 ls 3 nohead
set arrow from 61377,239 to 126464,239 ls 3 nohead
set arrow from 61429,240 to 126783,240 ls 3 nohead
set arrow from 61435,241 to 127117,241 ls 3 nohead
set arrow from 61478,242 to 127332,242 ls 3 nohead
set arrow from 61481,243 to 127117,243 ls 3 nohead
set arrow from 61486,244 to 127405,244 ls 3 nohead
set arrow from 61489,245 to 127524,245 ls 3 nohead
set arrow from 61499,246 to 128278,246 ls 3 nohead
set arrow from 61501,247 to 128841,247 ls 3 nohead
set arrow from 61507,248 to 129254,248 ls 3 nohead
set arrow from 61514,249 to 129271,249 ls 3 nohead
set arrow from 61518,250 to 129269,250 ls 3 nohead
set arrow from 61531,251 to 129257,251 ls 3 nohead
set arrow from 61533,252 to 129465,252 ls 3 nohead
set arrow from 61533,253 to 129981,253 ls 3 nohead
set arrow from 61539,254 to 130276,254 ls 3 nohead
set arrow from 61540,255 to 130260,255 ls 3 nohead
set ytics (256)
set xrange [0:130260]
set yrange [0:256]
set output "../Experiments/midasExp/leaflet-finder/Spark/AppData/spParCCweak/spParCC_262K_16384_256_1-pilot.0000/unit.000000/app-20170221094612-0000_0_sim_median_progress_rate_waterfall.pdf"
plot -1
