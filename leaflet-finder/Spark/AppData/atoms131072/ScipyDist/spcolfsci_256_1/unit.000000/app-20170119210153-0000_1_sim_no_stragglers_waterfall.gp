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

set arrow from 0,0 to 21025.8320312,0 ls 3 nohead
set arrow from 0,1 to 21025.8320312,1 ls 3 nohead
set arrow from 0,2 to 21025.8320312,2 ls 3 nohead
set arrow from 0,3 to 21025.8320312,3 ls 3 nohead
set arrow from 0,4 to 21025.8320312,4 ls 3 nohead
set arrow from 0,5 to 21025.8320312,5 ls 3 nohead
set arrow from 0,6 to 21025.8320312,6 ls 3 nohead
set arrow from 0,7 to 21025.8320312,7 ls 3 nohead
set arrow from 0,8 to 21025.8320312,8 ls 3 nohead
set arrow from 0,9 to 21025.8320312,9 ls 3 nohead
set arrow from 0,10 to 21025.8320312,10 ls 3 nohead
set arrow from 0,11 to 21025.8320312,11 ls 3 nohead
set arrow from 0,12 to 21025.8320312,12 ls 3 nohead
set arrow from 0,13 to 21025.8320312,13 ls 3 nohead
set arrow from 0,14 to 21025.8320312,14 ls 3 nohead
set arrow from 0,15 to 21025.8320312,15 ls 3 nohead
set arrow from 0,16 to 21025.8320312,16 ls 3 nohead
set arrow from 0,17 to 21025.8320312,17 ls 3 nohead
set arrow from 0,18 to 21025.8320312,18 ls 3 nohead
set arrow from 0,19 to 21025.8320312,19 ls 3 nohead
set arrow from 0,20 to 21025.8320312,20 ls 3 nohead
set arrow from 0,21 to 21025.8320312,21 ls 3 nohead
set arrow from 0,22 to 21025.8320312,22 ls 3 nohead
set arrow from 0,23 to 21025.8320312,23 ls 3 nohead
set arrow from 0,24 to 21025.8320312,24 ls 3 nohead
set arrow from 0,25 to 21025.8320312,25 ls 3 nohead
set arrow from 0,26 to 21025.8320312,26 ls 3 nohead
set arrow from 0,27 to 21025.8320312,27 ls 3 nohead
set arrow from 0,28 to 21025.8320312,28 ls 3 nohead
set arrow from 0,29 to 21025.8320312,29 ls 3 nohead
set arrow from 0,30 to 21025.8320312,30 ls 3 nohead
set arrow from 0,31 to 21025.8320312,31 ls 3 nohead
set arrow from 0,32 to 21025.8320312,32 ls 3 nohead
set arrow from 0,33 to 21025.8320312,33 ls 3 nohead
set arrow from 0,34 to 21025.8320312,34 ls 3 nohead
set arrow from 0,35 to 21025.8320312,35 ls 3 nohead
set arrow from 0,36 to 21025.8320312,36 ls 3 nohead
set arrow from 0,37 to 21025.8320312,37 ls 3 nohead
set arrow from 0,38 to 21025.8320312,38 ls 3 nohead
set arrow from 0,39 to 21025.8320312,39 ls 3 nohead
set arrow from 0,40 to 21025.8320312,40 ls 3 nohead
set arrow from 0,41 to 21025.8320312,41 ls 3 nohead
set arrow from 0,42 to 21025.8320312,42 ls 3 nohead
set arrow from 0,43 to 21025.8320312,43 ls 3 nohead
set arrow from 0,44 to 21025.8320312,44 ls 3 nohead
set arrow from 0,45 to 21025.8320312,45 ls 3 nohead
set arrow from 0,46 to 21025.8320312,46 ls 3 nohead
set arrow from 0,47 to 21025.8320312,47 ls 3 nohead
set arrow from 0,48 to 21025.8320312,48 ls 3 nohead
set arrow from 0,49 to 21025.8320312,49 ls 3 nohead
set arrow from 0,50 to 21025.8320312,50 ls 3 nohead
set arrow from 0,51 to 21025.8320312,51 ls 3 nohead
set arrow from 0,52 to 21025.8320312,52 ls 3 nohead
set arrow from 0,53 to 21025.8320312,53 ls 3 nohead
set arrow from 0,54 to 21025.8320312,54 ls 3 nohead
set arrow from 0,55 to 21025.8320312,55 ls 3 nohead
set arrow from 0,56 to 21025.8320312,56 ls 3 nohead
set arrow from 0,57 to 21025.8320312,57 ls 3 nohead
set arrow from 0,58 to 21025.8320312,58 ls 3 nohead
set arrow from 0,59 to 21025.8320312,59 ls 3 nohead
set arrow from 0,60 to 21025.8320312,60 ls 3 nohead
set arrow from 0,61 to 21025.8320312,61 ls 3 nohead
set arrow from 0,62 to 21025.8320312,62 ls 3 nohead
set arrow from 0,63 to 21025.8320312,63 ls 3 nohead
set arrow from 0,64 to 21025.8320312,64 ls 3 nohead
set arrow from 0,65 to 21025.8320312,65 ls 3 nohead
set arrow from 0,66 to 21025.8320312,66 ls 3 nohead
set arrow from 0,67 to 21025.8320312,67 ls 3 nohead
set arrow from 0,68 to 21025.8320312,68 ls 3 nohead
set arrow from 0,69 to 21025.8320312,69 ls 3 nohead
set arrow from 0,70 to 21025.8320312,70 ls 3 nohead
set arrow from 0,71 to 21025.8320312,71 ls 3 nohead
set arrow from 0,72 to 21025.8320312,72 ls 3 nohead
set arrow from 0,73 to 21025.8320312,73 ls 3 nohead
set arrow from 0,74 to 21025.8320312,74 ls 3 nohead
set arrow from 0,75 to 21025.8320312,75 ls 3 nohead
set arrow from 0,76 to 21025.8320312,76 ls 3 nohead
set arrow from 0,77 to 21025.8320312,77 ls 3 nohead
set arrow from 0,78 to 21025.8320312,78 ls 3 nohead
set arrow from 0,79 to 21025.8320312,79 ls 3 nohead
set arrow from 0,80 to 21025.8320312,80 ls 3 nohead
set arrow from 0,81 to 21025.8320312,81 ls 3 nohead
set arrow from 0,82 to 21025.8320312,82 ls 3 nohead
set arrow from 0,83 to 21025.8320312,83 ls 3 nohead
set arrow from 0,84 to 21025.8320312,84 ls 3 nohead
set arrow from 0,85 to 21025.8320312,85 ls 3 nohead
set arrow from 0,86 to 21025.8320312,86 ls 3 nohead
set arrow from 0,87 to 21025.8320312,87 ls 3 nohead
set arrow from 0,88 to 21025.8320312,88 ls 3 nohead
set arrow from 0,89 to 21025.8320312,89 ls 3 nohead
set arrow from 0,90 to 21025.8320312,90 ls 3 nohead
set arrow from 0,91 to 21025.8320312,91 ls 3 nohead
set arrow from 0,92 to 21025.8320312,92 ls 3 nohead
set arrow from 0,93 to 21025.8320312,93 ls 3 nohead
set arrow from 0,94 to 21025.8320312,94 ls 3 nohead
set arrow from 0,95 to 21025.8320312,95 ls 3 nohead
set arrow from 0,96 to 21025.8320312,96 ls 3 nohead
set arrow from 0,97 to 21025.8320312,97 ls 3 nohead
set arrow from 0,98 to 21025.8320312,98 ls 3 nohead
set arrow from 0,99 to 21025.8320312,99 ls 3 nohead
set arrow from 0,100 to 21025.8320312,100 ls 3 nohead
set arrow from 0,101 to 21025.8320312,101 ls 3 nohead
set arrow from 0,102 to 21025.8320312,102 ls 3 nohead
set arrow from 0,103 to 21025.8320312,103 ls 3 nohead
set arrow from 0,104 to 21025.8320312,104 ls 3 nohead
set arrow from 0,105 to 21025.8320312,105 ls 3 nohead
set arrow from 0,106 to 21025.8320312,106 ls 3 nohead
set arrow from 0,107 to 21025.8320312,107 ls 3 nohead
set arrow from 0,108 to 21025.8320312,108 ls 3 nohead
set arrow from 0,109 to 21025.8320312,109 ls 3 nohead
set arrow from 0,110 to 21025.8320312,110 ls 3 nohead
set arrow from 0,111 to 21025.8320312,111 ls 3 nohead
set arrow from 0,112 to 21025.8320312,112 ls 3 nohead
set arrow from 0,113 to 21025.8320312,113 ls 3 nohead
set arrow from 0,114 to 21025.8320312,114 ls 3 nohead
set arrow from 0,115 to 21025.8320312,115 ls 3 nohead
set arrow from 0,116 to 21025.8320312,116 ls 3 nohead
set arrow from 0,117 to 21025.8320312,117 ls 3 nohead
set arrow from 0,118 to 21025.8320312,118 ls 3 nohead
set arrow from 21025.8320312,119 to 42051.6640625,119 ls 3 nohead
set arrow from 21025.8320312,120 to 42051.6640625,120 ls 3 nohead
set arrow from 21025.8320312,121 to 42051.6640625,121 ls 3 nohead
set arrow from 21025.8320312,122 to 42051.6640625,122 ls 3 nohead
set arrow from 21025.8320312,123 to 42051.6640625,123 ls 3 nohead
set arrow from 21025.8320312,124 to 42051.6640625,124 ls 3 nohead
set arrow from 21025.8320312,125 to 42051.6640625,125 ls 3 nohead
set arrow from 21025.8320312,126 to 42051.6640625,126 ls 3 nohead
set arrow from 21025.8320312,127 to 42051.6640625,127 ls 3 nohead
set arrow from 21025.8320312,128 to 42051.6640625,128 ls 3 nohead
set arrow from 21025.8320312,129 to 42051.6640625,129 ls 3 nohead
set arrow from 21025.8320312,130 to 42051.6640625,130 ls 3 nohead
set arrow from 21025.8320312,131 to 42051.6640625,131 ls 3 nohead
set arrow from 21025.8320312,132 to 42051.6640625,132 ls 3 nohead
set arrow from 21025.8320312,133 to 42051.6640625,133 ls 3 nohead
set arrow from 21025.8320312,134 to 42051.6640625,134 ls 3 nohead
set arrow from 21025.8320312,135 to 42051.6640625,135 ls 3 nohead
set arrow from 21025.8320312,136 to 42051.6640625,136 ls 3 nohead
set arrow from 21025.8320312,137 to 42051.6640625,137 ls 3 nohead
set arrow from 21025.8320312,138 to 42051.6640625,138 ls 3 nohead
set arrow from 21025.8320312,139 to 42051.6640625,139 ls 3 nohead
set arrow from 21025.8320312,140 to 42051.6640625,140 ls 3 nohead
set arrow from 21025.8320312,141 to 42051.6640625,141 ls 3 nohead
set arrow from 21025.8320312,142 to 42051.6640625,142 ls 3 nohead
set arrow from 21025.8320312,143 to 42051.6640625,143 ls 3 nohead
set arrow from 21025.8320312,144 to 42051.6640625,144 ls 3 nohead
set arrow from 21025.8320312,145 to 42051.6640625,145 ls 3 nohead
set arrow from 21025.8320312,146 to 42051.6640625,146 ls 3 nohead
set arrow from 21025.8320312,147 to 42051.6640625,147 ls 3 nohead
set arrow from 21025.8320312,148 to 42051.6640625,148 ls 3 nohead
set arrow from 21025.8320312,149 to 42051.6640625,149 ls 3 nohead
set arrow from 21025.8320312,150 to 42051.6640625,150 ls 3 nohead
set arrow from 21025.8320312,151 to 42051.6640625,151 ls 3 nohead
set arrow from 21025.8320312,152 to 42051.6640625,152 ls 3 nohead
set arrow from 21025.8320312,153 to 42051.6640625,153 ls 3 nohead
set arrow from 21025.8320312,154 to 42051.6640625,154 ls 3 nohead
set arrow from 21025.8320312,155 to 42051.6640625,155 ls 3 nohead
set arrow from 21025.8320312,156 to 42051.6640625,156 ls 3 nohead
set arrow from 21025.8320312,157 to 42051.6640625,157 ls 3 nohead
set arrow from 21025.8320312,158 to 42051.6640625,158 ls 3 nohead
set arrow from 21025.8320312,159 to 42051.6640625,159 ls 3 nohead
set arrow from 21025.8320312,160 to 42051.6640625,160 ls 3 nohead
set arrow from 21025.8320312,161 to 42051.6640625,161 ls 3 nohead
set arrow from 21025.8320312,162 to 42051.6640625,162 ls 3 nohead
set arrow from 21025.8320312,163 to 42051.6640625,163 ls 3 nohead
set arrow from 21025.8320312,164 to 42051.6640625,164 ls 3 nohead
set arrow from 21025.8320312,165 to 42051.6640625,165 ls 3 nohead
set arrow from 21025.8320312,166 to 42051.6640625,166 ls 3 nohead
set arrow from 21025.8320312,167 to 42051.6640625,167 ls 3 nohead
set arrow from 21025.8320312,168 to 42051.6640625,168 ls 3 nohead
set arrow from 21025.8320312,169 to 42051.6640625,169 ls 3 nohead
set arrow from 21025.8320312,170 to 42051.6640625,170 ls 3 nohead
set arrow from 21025.8320312,171 to 42051.6640625,171 ls 3 nohead
set arrow from 21025.8320312,172 to 42051.6640625,172 ls 3 nohead
set arrow from 21025.8320312,173 to 42051.6640625,173 ls 3 nohead
set arrow from 21025.8320312,174 to 42051.6640625,174 ls 3 nohead
set arrow from 21025.8320312,175 to 42051.6640625,175 ls 3 nohead
set arrow from 21025.8320312,176 to 42051.6640625,176 ls 3 nohead
set arrow from 21025.8320312,177 to 42051.6640625,177 ls 3 nohead
set arrow from 21025.8320312,178 to 42051.6640625,178 ls 3 nohead
set arrow from 21025.8320312,179 to 42051.6640625,179 ls 3 nohead
set arrow from 21025.8320312,180 to 42051.6640625,180 ls 3 nohead
set arrow from 21025.8320312,181 to 42051.6640625,181 ls 3 nohead
set arrow from 21025.8320312,182 to 42051.6640625,182 ls 3 nohead
set arrow from 21025.8320312,183 to 42051.6640625,183 ls 3 nohead
set arrow from 21025.8320312,184 to 42051.6640625,184 ls 3 nohead
set arrow from 21025.8320312,185 to 42051.6640625,185 ls 3 nohead
set arrow from 21025.8320312,186 to 42051.6640625,186 ls 3 nohead
set arrow from 21025.8320312,187 to 42051.6640625,187 ls 3 nohead
set arrow from 21025.8320312,188 to 42051.6640625,188 ls 3 nohead
set arrow from 21025.8320312,189 to 42051.6640625,189 ls 3 nohead
set arrow from 21025.8320312,190 to 42051.6640625,190 ls 3 nohead
set arrow from 21025.8320312,191 to 42051.6640625,191 ls 3 nohead
set arrow from 21025.8320312,192 to 42051.6640625,192 ls 3 nohead
set arrow from 21025.8320312,193 to 42051.6640625,193 ls 3 nohead
set arrow from 21025.8320312,194 to 42051.6640625,194 ls 3 nohead
set arrow from 21025.8320312,195 to 42051.6640625,195 ls 3 nohead
set arrow from 21025.8320312,196 to 42051.6640625,196 ls 3 nohead
set arrow from 21025.8320312,197 to 42051.6640625,197 ls 3 nohead
set arrow from 21025.8320312,198 to 42051.6640625,198 ls 3 nohead
set arrow from 21025.8320312,199 to 42051.6640625,199 ls 3 nohead
set arrow from 21025.8320312,200 to 42051.6640625,200 ls 3 nohead
set arrow from 21025.8320312,201 to 42051.6640625,201 ls 3 nohead
set arrow from 21025.8320312,202 to 42051.6640625,202 ls 3 nohead
set arrow from 21025.8320312,203 to 42051.6640625,203 ls 3 nohead
set arrow from 21025.8320312,204 to 42051.6640625,204 ls 3 nohead
set arrow from 21025.8320312,205 to 42051.6640625,205 ls 3 nohead
set arrow from 21025.8320312,206 to 42051.6640625,206 ls 3 nohead
set arrow from 21025.8320312,207 to 42051.6640625,207 ls 3 nohead
set arrow from 21025.8320312,208 to 42051.6640625,208 ls 3 nohead
set arrow from 21025.8320312,209 to 42051.6640625,209 ls 3 nohead
set arrow from 21025.8320312,210 to 42051.6640625,210 ls 3 nohead
set arrow from 21025.8320312,211 to 42051.6640625,211 ls 3 nohead
set arrow from 21025.8320312,212 to 42051.6640625,212 ls 3 nohead
set arrow from 21025.8320312,213 to 42051.6640625,213 ls 3 nohead
set arrow from 21025.8320312,214 to 42051.6640625,214 ls 3 nohead
set arrow from 21025.8320312,215 to 42051.6640625,215 ls 3 nohead
set arrow from 21025.8320312,216 to 42051.6640625,216 ls 3 nohead
set arrow from 21025.8320312,217 to 42051.6640625,217 ls 3 nohead
set arrow from 21025.8320312,218 to 42051.6640625,218 ls 3 nohead
set arrow from 21025.8320312,219 to 42051.6640625,219 ls 3 nohead
set arrow from 21025.8320312,220 to 42051.6640625,220 ls 3 nohead
set arrow from 21025.8320312,221 to 42051.6640625,221 ls 3 nohead
set arrow from 21025.8320312,222 to 42051.6640625,222 ls 3 nohead
set arrow from 21025.8320312,223 to 42051.6640625,223 ls 3 nohead
set arrow from 21025.8320312,224 to 42051.6640625,224 ls 3 nohead
set arrow from 21025.8320312,225 to 42051.6640625,225 ls 3 nohead
set arrow from 21025.8320312,226 to 42051.6640625,226 ls 3 nohead
set arrow from 21025.8320312,227 to 42051.6640625,227 ls 3 nohead
set arrow from 21025.8320312,228 to 42051.6640625,228 ls 3 nohead
set arrow from 21025.8320312,229 to 42051.6640625,229 ls 3 nohead
set arrow from 21025.8320312,230 to 42051.6640625,230 ls 3 nohead
set arrow from 21025.8320312,231 to 42051.6640625,231 ls 3 nohead
set arrow from 21025.8320312,232 to 42051.6640625,232 ls 3 nohead
set arrow from 21025.8320312,233 to 42051.6640625,233 ls 3 nohead
set arrow from 21025.8320312,234 to 42051.6640625,234 ls 3 nohead
set arrow from 21025.8320312,235 to 42051.6640625,235 ls 3 nohead
set arrow from 21025.8320312,236 to 42051.6640625,236 ls 3 nohead
set arrow from 21025.8320312,237 to 42051.6640625,237 ls 3 nohead
set arrow from 42051.6640625,238 to 63077.4960938,238 ls 3 nohead
set arrow from 42051.6640625,239 to 63077.4960938,239 ls 3 nohead
set arrow from 42051.6640625,240 to 63077.4960938,240 ls 3 nohead
set arrow from 42051.6640625,241 to 63077.4960938,241 ls 3 nohead
set arrow from 42051.6640625,242 to 63077.4960938,242 ls 3 nohead
set arrow from 42051.6640625,243 to 63077.4960938,243 ls 3 nohead
set arrow from 42051.6640625,244 to 63077.4960938,244 ls 3 nohead
set arrow from 42051.6640625,245 to 63077.4960938,245 ls 3 nohead
set arrow from 42051.6640625,246 to 63077.4960938,246 ls 3 nohead
set arrow from 42051.6640625,247 to 63077.4960938,247 ls 3 nohead
set arrow from 42051.6640625,248 to 63077.4960938,248 ls 3 nohead
set arrow from 42051.6640625,249 to 63077.4960938,249 ls 3 nohead
set arrow from 42051.6640625,250 to 63077.4960938,250 ls 3 nohead
set arrow from 42051.6640625,251 to 63077.4960938,251 ls 3 nohead
set arrow from 42051.6640625,252 to 63077.4960938,252 ls 3 nohead
set arrow from 42051.6640625,253 to 63077.4960938,253 ls 3 nohead
set arrow from 42051.6640625,254 to 63077.4960938,254 ls 3 nohead
set arrow from 42051.6640625,255 to 63077.4960938,255 ls 3 nohead
set ytics (256)
set xrange [0:63077.4960938]
set yrange [0:256]
set output "../Experiments/midasExp/leaflet-finder/Spark/AppData/atoms131072/ScipyDist/spcolfsci_256_1/unit.000000/app-20170119210153-0000_1_sim_no_stragglers_waterfall.pdf"
plot -1
