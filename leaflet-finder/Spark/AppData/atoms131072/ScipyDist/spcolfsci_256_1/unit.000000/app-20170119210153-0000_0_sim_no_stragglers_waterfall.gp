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

set arrow from 0,0 to 2206.00390625,0 ls 3 nohead
set arrow from 0,1 to 2206.00390625,1 ls 3 nohead
set arrow from 0,2 to 2206.00390625,2 ls 3 nohead
set arrow from 0,3 to 2206.00390625,3 ls 3 nohead
set arrow from 0,4 to 2206.00390625,4 ls 3 nohead
set arrow from 0,5 to 2206.00390625,5 ls 3 nohead
set arrow from 0,6 to 2206.00390625,6 ls 3 nohead
set arrow from 0,7 to 2206.00390625,7 ls 3 nohead
set arrow from 0,8 to 2206.00390625,8 ls 3 nohead
set arrow from 0,9 to 2206.00390625,9 ls 3 nohead
set arrow from 0,10 to 2206.00390625,10 ls 3 nohead
set arrow from 0,11 to 2206.00390625,11 ls 3 nohead
set arrow from 0,12 to 2206.00390625,12 ls 3 nohead
set arrow from 0,13 to 2206.00390625,13 ls 3 nohead
set arrow from 0,14 to 2206.00390625,14 ls 3 nohead
set arrow from 0,15 to 2206.00390625,15 ls 3 nohead
set arrow from 0,16 to 2206.00390625,16 ls 3 nohead
set arrow from 0,17 to 2206.00390625,17 ls 3 nohead
set arrow from 0,18 to 2206.00390625,18 ls 3 nohead
set arrow from 0,19 to 2206.00390625,19 ls 3 nohead
set arrow from 0,20 to 2206.00390625,20 ls 3 nohead
set arrow from 0,21 to 2206.00390625,21 ls 3 nohead
set arrow from 0,22 to 2206.00390625,22 ls 3 nohead
set arrow from 0,23 to 2206.00390625,23 ls 3 nohead
set arrow from 0,24 to 2206.00390625,24 ls 3 nohead
set arrow from 0,25 to 2206.00390625,25 ls 3 nohead
set arrow from 0,26 to 2206.00390625,26 ls 3 nohead
set arrow from 0,27 to 2206.00390625,27 ls 3 nohead
set arrow from 0,28 to 2206.00390625,28 ls 3 nohead
set arrow from 0,29 to 2206.00390625,29 ls 3 nohead
set arrow from 0,30 to 2206.00390625,30 ls 3 nohead
set arrow from 0,31 to 2206.00390625,31 ls 3 nohead
set arrow from 0,32 to 2206.00390625,32 ls 3 nohead
set arrow from 0,33 to 2206.00390625,33 ls 3 nohead
set arrow from 0,34 to 2206.00390625,34 ls 3 nohead
set arrow from 0,35 to 2206.00390625,35 ls 3 nohead
set arrow from 0,36 to 2206.00390625,36 ls 3 nohead
set arrow from 0,37 to 2206.00390625,37 ls 3 nohead
set arrow from 0,38 to 2206.00390625,38 ls 3 nohead
set arrow from 0,39 to 2206.00390625,39 ls 3 nohead
set arrow from 0,40 to 2206.00390625,40 ls 3 nohead
set arrow from 0,41 to 2206.00390625,41 ls 3 nohead
set arrow from 0,42 to 2206.00390625,42 ls 3 nohead
set arrow from 0,43 to 2206.00390625,43 ls 3 nohead
set arrow from 0,44 to 2206.00390625,44 ls 3 nohead
set arrow from 0,45 to 2206.00390625,45 ls 3 nohead
set arrow from 0,46 to 2206.00390625,46 ls 3 nohead
set arrow from 0,47 to 2206.00390625,47 ls 3 nohead
set arrow from 0,48 to 2206.00390625,48 ls 3 nohead
set arrow from 0,49 to 2206.00390625,49 ls 3 nohead
set arrow from 0,50 to 2206.00390625,50 ls 3 nohead
set arrow from 0,51 to 2206.00390625,51 ls 3 nohead
set arrow from 0,52 to 2206.00390625,52 ls 3 nohead
set arrow from 0,53 to 2206.00390625,53 ls 3 nohead
set arrow from 0,54 to 2206.00390625,54 ls 3 nohead
set arrow from 0,55 to 2206.00390625,55 ls 3 nohead
set arrow from 0,56 to 2206.00390625,56 ls 3 nohead
set arrow from 0,57 to 2206.00390625,57 ls 3 nohead
set arrow from 0,58 to 2206.00390625,58 ls 3 nohead
set arrow from 0,59 to 2206.00390625,59 ls 3 nohead
set arrow from 0,60 to 2206.00390625,60 ls 3 nohead
set arrow from 0,61 to 2206.00390625,61 ls 3 nohead
set arrow from 0,62 to 2206.00390625,62 ls 3 nohead
set arrow from 0,63 to 2206.00390625,63 ls 3 nohead
set arrow from 0,64 to 2206.00390625,64 ls 3 nohead
set arrow from 0,65 to 2206.00390625,65 ls 3 nohead
set arrow from 0,66 to 2206.00390625,66 ls 3 nohead
set arrow from 0,67 to 2206.00390625,67 ls 3 nohead
set arrow from 0,68 to 2206.00390625,68 ls 3 nohead
set arrow from 0,69 to 2206.00390625,69 ls 3 nohead
set arrow from 0,70 to 2206.00390625,70 ls 3 nohead
set arrow from 0,71 to 2206.00390625,71 ls 3 nohead
set arrow from 0,72 to 2206.00390625,72 ls 3 nohead
set arrow from 0,73 to 2206.00390625,73 ls 3 nohead
set arrow from 0,74 to 2206.00390625,74 ls 3 nohead
set arrow from 0,75 to 2206.00390625,75 ls 3 nohead
set arrow from 0,76 to 2206.00390625,76 ls 3 nohead
set arrow from 0,77 to 2206.00390625,77 ls 3 nohead
set arrow from 0,78 to 2206.00390625,78 ls 3 nohead
set arrow from 0,79 to 2206.00390625,79 ls 3 nohead
set arrow from 0,80 to 2206.00390625,80 ls 3 nohead
set arrow from 0,81 to 2206.00390625,81 ls 3 nohead
set arrow from 0,82 to 2206.00390625,82 ls 3 nohead
set arrow from 0,83 to 2206.00390625,83 ls 3 nohead
set arrow from 0,84 to 2206.00390625,84 ls 3 nohead
set arrow from 0,85 to 2206.00390625,85 ls 3 nohead
set arrow from 0,86 to 2206.00390625,86 ls 3 nohead
set arrow from 0,87 to 2206.00390625,87 ls 3 nohead
set arrow from 0,88 to 2206.00390625,88 ls 3 nohead
set arrow from 0,89 to 2206.00390625,89 ls 3 nohead
set arrow from 0,90 to 2206.00390625,90 ls 3 nohead
set arrow from 0,91 to 2206.00390625,91 ls 3 nohead
set arrow from 0,92 to 2206.00390625,92 ls 3 nohead
set arrow from 0,93 to 2206.00390625,93 ls 3 nohead
set arrow from 0,94 to 2206.00390625,94 ls 3 nohead
set arrow from 0,95 to 2206.00390625,95 ls 3 nohead
set arrow from 0,96 to 2206.00390625,96 ls 3 nohead
set arrow from 0,97 to 2206.00390625,97 ls 3 nohead
set arrow from 0,98 to 2206.00390625,98 ls 3 nohead
set arrow from 0,99 to 2206.00390625,99 ls 3 nohead
set arrow from 0,100 to 2206.00390625,100 ls 3 nohead
set arrow from 0,101 to 2206.00390625,101 ls 3 nohead
set arrow from 0,102 to 2206.00390625,102 ls 3 nohead
set arrow from 0,103 to 2206.00390625,103 ls 3 nohead
set arrow from 0,104 to 2206.00390625,104 ls 3 nohead
set arrow from 0,105 to 2206.00390625,105 ls 3 nohead
set arrow from 0,106 to 2206.00390625,106 ls 3 nohead
set arrow from 0,107 to 2206.00390625,107 ls 3 nohead
set arrow from 0,108 to 2206.00390625,108 ls 3 nohead
set arrow from 0,109 to 2206.00390625,109 ls 3 nohead
set arrow from 0,110 to 2206.00390625,110 ls 3 nohead
set arrow from 0,111 to 2206.00390625,111 ls 3 nohead
set arrow from 0,112 to 2206.00390625,112 ls 3 nohead
set arrow from 0,113 to 2206.00390625,113 ls 3 nohead
set arrow from 0,114 to 2206.00390625,114 ls 3 nohead
set arrow from 0,115 to 2206.00390625,115 ls 3 nohead
set arrow from 0,116 to 2206.00390625,116 ls 3 nohead
set arrow from 0,117 to 2206.00390625,117 ls 3 nohead
set arrow from 0,118 to 2206.00390625,118 ls 3 nohead
set arrow from 0,119 to 2206.00390625,119 ls 3 nohead
set arrow from 0,120 to 2206.00390625,120 ls 3 nohead
set arrow from 0,121 to 2206.00390625,121 ls 3 nohead
set arrow from 0,122 to 2206.00390625,122 ls 3 nohead
set arrow from 0,123 to 2206.00390625,123 ls 3 nohead
set arrow from 0,124 to 2206.00390625,124 ls 3 nohead
set arrow from 0,125 to 2206.00390625,125 ls 3 nohead
set arrow from 0,126 to 2206.00390625,126 ls 3 nohead
set arrow from 0,127 to 2206.00390625,127 ls 3 nohead
set arrow from 0,128 to 2206.00390625,128 ls 3 nohead
set arrow from 0,129 to 2206.00390625,129 ls 3 nohead
set arrow from 0,130 to 2206.00390625,130 ls 3 nohead
set arrow from 0,131 to 2206.00390625,131 ls 3 nohead
set arrow from 0,132 to 2206.00390625,132 ls 3 nohead
set arrow from 0,133 to 2206.00390625,133 ls 3 nohead
set arrow from 0,134 to 2206.00390625,134 ls 3 nohead
set arrow from 0,135 to 2206.00390625,135 ls 3 nohead
set arrow from 0,136 to 2206.00390625,136 ls 3 nohead
set arrow from 0,137 to 2206.00390625,137 ls 3 nohead
set arrow from 0,138 to 2206.00390625,138 ls 3 nohead
set arrow from 0,139 to 2206.00390625,139 ls 3 nohead
set arrow from 0,140 to 2206.00390625,140 ls 3 nohead
set arrow from 0,141 to 2206.00390625,141 ls 3 nohead
set arrow from 0,142 to 2206.00390625,142 ls 3 nohead
set arrow from 0,143 to 2206.00390625,143 ls 3 nohead
set arrow from 0,144 to 2206.00390625,144 ls 3 nohead
set arrow from 0,145 to 2206.00390625,145 ls 3 nohead
set arrow from 0,146 to 2206.00390625,146 ls 3 nohead
set arrow from 0,147 to 2206.00390625,147 ls 3 nohead
set arrow from 0,148 to 2206.00390625,148 ls 3 nohead
set arrow from 0,149 to 2206.00390625,149 ls 3 nohead
set arrow from 0,150 to 2206.00390625,150 ls 3 nohead
set arrow from 0,151 to 2206.00390625,151 ls 3 nohead
set arrow from 0,152 to 2206.00390625,152 ls 3 nohead
set arrow from 0,153 to 2206.00390625,153 ls 3 nohead
set arrow from 0,154 to 2206.00390625,154 ls 3 nohead
set arrow from 0,155 to 2206.00390625,155 ls 3 nohead
set arrow from 0,156 to 2206.00390625,156 ls 3 nohead
set arrow from 0,157 to 2206.00390625,157 ls 3 nohead
set arrow from 0,158 to 2206.00390625,158 ls 3 nohead
set arrow from 0,159 to 2206.00390625,159 ls 3 nohead
set arrow from 0,160 to 2206.00390625,160 ls 3 nohead
set arrow from 0,161 to 2206.00390625,161 ls 3 nohead
set arrow from 0,162 to 2206.00390625,162 ls 3 nohead
set arrow from 0,163 to 2206.00390625,163 ls 3 nohead
set arrow from 0,164 to 2206.00390625,164 ls 3 nohead
set arrow from 0,165 to 2206.00390625,165 ls 3 nohead
set arrow from 0,166 to 2206.00390625,166 ls 3 nohead
set arrow from 0,167 to 2206.00390625,167 ls 3 nohead
set arrow from 0,168 to 2206.00390625,168 ls 3 nohead
set arrow from 0,169 to 2206.00390625,169 ls 3 nohead
set arrow from 0,170 to 2206.00390625,170 ls 3 nohead
set arrow from 0,171 to 2206.00390625,171 ls 3 nohead
set arrow from 0,172 to 2206.00390625,172 ls 3 nohead
set arrow from 0,173 to 2206.00390625,173 ls 3 nohead
set arrow from 0,174 to 2206.00390625,174 ls 3 nohead
set arrow from 0,175 to 2206.00390625,175 ls 3 nohead
set arrow from 0,176 to 2206.00390625,176 ls 3 nohead
set arrow from 0,177 to 2206.00390625,177 ls 3 nohead
set arrow from 0,178 to 2206.00390625,178 ls 3 nohead
set arrow from 0,179 to 2206.00390625,179 ls 3 nohead
set arrow from 0,180 to 2206.00390625,180 ls 3 nohead
set arrow from 0,181 to 2206.00390625,181 ls 3 nohead
set arrow from 0,182 to 2206.00390625,182 ls 3 nohead
set arrow from 0,183 to 2206.00390625,183 ls 3 nohead
set arrow from 0,184 to 2206.00390625,184 ls 3 nohead
set arrow from 0,185 to 2206.00390625,185 ls 3 nohead
set arrow from 0,186 to 2206.00390625,186 ls 3 nohead
set arrow from 0,187 to 2206.00390625,187 ls 3 nohead
set arrow from 0,188 to 2206.00390625,188 ls 3 nohead
set arrow from 0,189 to 2206.00390625,189 ls 3 nohead
set arrow from 0,190 to 2206.00390625,190 ls 3 nohead
set arrow from 0,191 to 2206.00390625,191 ls 3 nohead
set arrow from 0,192 to 2206.00390625,192 ls 3 nohead
set arrow from 0,193 to 2206.00390625,193 ls 3 nohead
set arrow from 0,194 to 2206.00390625,194 ls 3 nohead
set arrow from 0,195 to 2206.00390625,195 ls 3 nohead
set arrow from 0,196 to 2206.00390625,196 ls 3 nohead
set arrow from 0,197 to 2206.00390625,197 ls 3 nohead
set arrow from 0,198 to 2206.00390625,198 ls 3 nohead
set arrow from 0,199 to 2206.00390625,199 ls 3 nohead
set arrow from 0,200 to 2206.00390625,200 ls 3 nohead
set arrow from 0,201 to 2206.00390625,201 ls 3 nohead
set arrow from 0,202 to 2206.00390625,202 ls 3 nohead
set arrow from 0,203 to 2206.00390625,203 ls 3 nohead
set arrow from 0,204 to 2206.00390625,204 ls 3 nohead
set arrow from 0,205 to 2206.00390625,205 ls 3 nohead
set arrow from 0,206 to 2206.00390625,206 ls 3 nohead
set arrow from 0,207 to 2206.00390625,207 ls 3 nohead
set arrow from 0,208 to 2206.00390625,208 ls 3 nohead
set arrow from 0,209 to 2206.00390625,209 ls 3 nohead
set arrow from 0,210 to 2206.00390625,210 ls 3 nohead
set arrow from 0,211 to 2206.00390625,211 ls 3 nohead
set arrow from 0,212 to 2206.00390625,212 ls 3 nohead
set arrow from 0,213 to 2206.00390625,213 ls 3 nohead
set arrow from 0,214 to 2206.00390625,214 ls 3 nohead
set arrow from 0,215 to 2206.00390625,215 ls 3 nohead
set arrow from 0,216 to 2206.00390625,216 ls 3 nohead
set arrow from 0,217 to 2206.00390625,217 ls 3 nohead
set arrow from 0,218 to 2206.00390625,218 ls 3 nohead
set arrow from 0,219 to 2206.00390625,219 ls 3 nohead
set arrow from 0,220 to 2206.00390625,220 ls 3 nohead
set arrow from 0,221 to 2206.00390625,221 ls 3 nohead
set arrow from 0,222 to 2206.00390625,222 ls 3 nohead
set arrow from 2206.00390625,223 to 4412.0078125,223 ls 3 nohead
set arrow from 2206.00390625,224 to 4412.0078125,224 ls 3 nohead
set arrow from 2206.00390625,225 to 4412.0078125,225 ls 3 nohead
set arrow from 2206.00390625,226 to 4412.0078125,226 ls 3 nohead
set arrow from 2206.00390625,227 to 4412.0078125,227 ls 3 nohead
set arrow from 2206.00390625,228 to 4412.0078125,228 ls 3 nohead
set arrow from 2206.00390625,229 to 4412.0078125,229 ls 3 nohead
set arrow from 2206.00390625,230 to 4412.0078125,230 ls 3 nohead
set arrow from 2206.00390625,231 to 4412.0078125,231 ls 3 nohead
set arrow from 2206.00390625,232 to 4412.0078125,232 ls 3 nohead
set arrow from 2206.00390625,233 to 4412.0078125,233 ls 3 nohead
set arrow from 2206.00390625,234 to 4412.0078125,234 ls 3 nohead
set arrow from 2206.00390625,235 to 4412.0078125,235 ls 3 nohead
set arrow from 2206.00390625,236 to 4412.0078125,236 ls 3 nohead
set arrow from 2206.00390625,237 to 4412.0078125,237 ls 3 nohead
set arrow from 2206.00390625,238 to 4412.0078125,238 ls 3 nohead
set arrow from 2206.00390625,239 to 4412.0078125,239 ls 3 nohead
set arrow from 2206.00390625,240 to 4412.0078125,240 ls 3 nohead
set arrow from 2206.00390625,241 to 4412.0078125,241 ls 3 nohead
set arrow from 2206.00390625,242 to 4412.0078125,242 ls 3 nohead
set arrow from 2206.00390625,243 to 4412.0078125,243 ls 3 nohead
set arrow from 2206.00390625,244 to 4412.0078125,244 ls 3 nohead
set arrow from 2206.00390625,245 to 4412.0078125,245 ls 3 nohead
set arrow from 2206.00390625,246 to 4412.0078125,246 ls 3 nohead
set arrow from 2206.00390625,247 to 4412.0078125,247 ls 3 nohead
set arrow from 2206.00390625,248 to 4412.0078125,248 ls 3 nohead
set arrow from 2206.00390625,249 to 4412.0078125,249 ls 3 nohead
set arrow from 2206.00390625,250 to 4412.0078125,250 ls 3 nohead
set arrow from 2206.00390625,251 to 4412.0078125,251 ls 3 nohead
set arrow from 2206.00390625,252 to 4412.0078125,252 ls 3 nohead
set arrow from 2206.00390625,253 to 4412.0078125,253 ls 3 nohead
set arrow from 2206.00390625,254 to 4412.0078125,254 ls 3 nohead
set arrow from 2206.00390625,255 to 4412.0078125,255 ls 3 nohead
set ytics (256)
set xrange [0:4412.0078125]
set yrange [0:256]
set output "../Experiments/midasExp/leaflet-finder/Spark/AppData/atoms131072/ScipyDist/spcolfsci_256_1/unit.000000/app-20170119210153-0000_0_sim_no_stragglers_waterfall.pdf"
plot -1
