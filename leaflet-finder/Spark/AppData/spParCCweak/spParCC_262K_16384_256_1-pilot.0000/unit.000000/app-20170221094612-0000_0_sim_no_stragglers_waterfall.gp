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

set arrow from 0,0 to 62896.2539062,0 ls 3 nohead
set arrow from 0,1 to 62896.2539062,1 ls 3 nohead
set arrow from 0,2 to 62896.2539062,2 ls 3 nohead
set arrow from 0,3 to 62896.2539062,3 ls 3 nohead
set arrow from 0,4 to 62896.2539062,4 ls 3 nohead
set arrow from 0,5 to 62896.2539062,5 ls 3 nohead
set arrow from 0,6 to 62896.2539062,6 ls 3 nohead
set arrow from 0,7 to 62896.2539062,7 ls 3 nohead
set arrow from 0,8 to 62896.2539062,8 ls 3 nohead
set arrow from 0,9 to 62896.2539062,9 ls 3 nohead
set arrow from 0,10 to 62896.2539062,10 ls 3 nohead
set arrow from 0,11 to 62896.2539062,11 ls 3 nohead
set arrow from 0,12 to 62896.2539062,12 ls 3 nohead
set arrow from 0,13 to 62896.2539062,13 ls 3 nohead
set arrow from 0,14 to 62896.2539062,14 ls 3 nohead
set arrow from 0,15 to 62896.2539062,15 ls 3 nohead
set arrow from 0,16 to 62896.2539062,16 ls 3 nohead
set arrow from 0,17 to 62896.2539062,17 ls 3 nohead
set arrow from 0,18 to 62896.2539062,18 ls 3 nohead
set arrow from 0,19 to 62896.2539062,19 ls 3 nohead
set arrow from 0,20 to 62896.2539062,20 ls 3 nohead
set arrow from 0,21 to 62896.2539062,21 ls 3 nohead
set arrow from 0,22 to 62896.2539062,22 ls 3 nohead
set arrow from 0,23 to 62896.2539062,23 ls 3 nohead
set arrow from 0,24 to 62896.2539062,24 ls 3 nohead
set arrow from 0,25 to 62896.2539062,25 ls 3 nohead
set arrow from 0,26 to 62896.2539062,26 ls 3 nohead
set arrow from 0,27 to 62896.2539062,27 ls 3 nohead
set arrow from 0,28 to 62896.2539062,28 ls 3 nohead
set arrow from 0,29 to 62896.2539062,29 ls 3 nohead
set arrow from 0,30 to 62896.2539062,30 ls 3 nohead
set arrow from 0,31 to 62896.2539062,31 ls 3 nohead
set arrow from 0,32 to 62896.2539062,32 ls 3 nohead
set arrow from 0,33 to 62896.2539062,33 ls 3 nohead
set arrow from 0,34 to 62896.2539062,34 ls 3 nohead
set arrow from 0,35 to 62896.2539062,35 ls 3 nohead
set arrow from 0,36 to 62896.2539062,36 ls 3 nohead
set arrow from 0,37 to 62896.2539062,37 ls 3 nohead
set arrow from 0,38 to 62896.2539062,38 ls 3 nohead
set arrow from 0,39 to 62896.2539062,39 ls 3 nohead
set arrow from 0,40 to 62896.2539062,40 ls 3 nohead
set arrow from 0,41 to 62896.2539062,41 ls 3 nohead
set arrow from 0,42 to 62896.2539062,42 ls 3 nohead
set arrow from 0,43 to 62896.2539062,43 ls 3 nohead
set arrow from 0,44 to 62896.2539062,44 ls 3 nohead
set arrow from 0,45 to 62896.2539062,45 ls 3 nohead
set arrow from 0,46 to 62896.2539062,46 ls 3 nohead
set arrow from 0,47 to 62896.2539062,47 ls 3 nohead
set arrow from 0,48 to 62896.2539062,48 ls 3 nohead
set arrow from 0,49 to 62896.2539062,49 ls 3 nohead
set arrow from 0,50 to 62896.2539062,50 ls 3 nohead
set arrow from 0,51 to 62896.2539062,51 ls 3 nohead
set arrow from 0,52 to 62896.2539062,52 ls 3 nohead
set arrow from 0,53 to 62896.2539062,53 ls 3 nohead
set arrow from 0,54 to 62896.2539062,54 ls 3 nohead
set arrow from 0,55 to 62896.2539062,55 ls 3 nohead
set arrow from 0,56 to 62896.2539062,56 ls 3 nohead
set arrow from 0,57 to 62896.2539062,57 ls 3 nohead
set arrow from 0,58 to 62896.2539062,58 ls 3 nohead
set arrow from 0,59 to 62896.2539062,59 ls 3 nohead
set arrow from 0,60 to 62896.2539062,60 ls 3 nohead
set arrow from 0,61 to 62896.2539062,61 ls 3 nohead
set arrow from 0,62 to 62896.2539062,62 ls 3 nohead
set arrow from 0,63 to 62896.2539062,63 ls 3 nohead
set arrow from 0,64 to 62896.2539062,64 ls 3 nohead
set arrow from 0,65 to 62896.2539062,65 ls 3 nohead
set arrow from 0,66 to 62896.2539062,66 ls 3 nohead
set arrow from 0,67 to 62896.2539062,67 ls 3 nohead
set arrow from 0,68 to 62896.2539062,68 ls 3 nohead
set arrow from 0,69 to 62896.2539062,69 ls 3 nohead
set arrow from 0,70 to 62896.2539062,70 ls 3 nohead
set arrow from 0,71 to 62896.2539062,71 ls 3 nohead
set arrow from 0,72 to 62896.2539062,72 ls 3 nohead
set arrow from 0,73 to 62896.2539062,73 ls 3 nohead
set arrow from 0,74 to 62896.2539062,74 ls 3 nohead
set arrow from 0,75 to 62896.2539062,75 ls 3 nohead
set arrow from 0,76 to 62896.2539062,76 ls 3 nohead
set arrow from 0,77 to 62896.2539062,77 ls 3 nohead
set arrow from 0,78 to 62896.2539062,78 ls 3 nohead
set arrow from 0,79 to 62896.2539062,79 ls 3 nohead
set arrow from 0,80 to 62896.2539062,80 ls 3 nohead
set arrow from 0,81 to 62896.2539062,81 ls 3 nohead
set arrow from 0,82 to 62896.2539062,82 ls 3 nohead
set arrow from 0,83 to 62896.2539062,83 ls 3 nohead
set arrow from 0,84 to 62896.2539062,84 ls 3 nohead
set arrow from 0,85 to 62896.2539062,85 ls 3 nohead
set arrow from 0,86 to 62896.2539062,86 ls 3 nohead
set arrow from 0,87 to 62896.2539062,87 ls 3 nohead
set arrow from 0,88 to 62896.2539062,88 ls 3 nohead
set arrow from 0,89 to 62896.2539062,89 ls 3 nohead
set arrow from 0,90 to 62896.2539062,90 ls 3 nohead
set arrow from 0,91 to 62896.2539062,91 ls 3 nohead
set arrow from 0,92 to 62896.2539062,92 ls 3 nohead
set arrow from 0,93 to 62896.2539062,93 ls 3 nohead
set arrow from 0,94 to 62896.2539062,94 ls 3 nohead
set arrow from 0,95 to 62896.2539062,95 ls 3 nohead
set arrow from 0,96 to 62896.2539062,96 ls 3 nohead
set arrow from 0,97 to 62896.2539062,97 ls 3 nohead
set arrow from 0,98 to 62896.2539062,98 ls 3 nohead
set arrow from 0,99 to 62896.2539062,99 ls 3 nohead
set arrow from 0,100 to 62896.2539062,100 ls 3 nohead
set arrow from 0,101 to 62896.2539062,101 ls 3 nohead
set arrow from 0,102 to 62896.2539062,102 ls 3 nohead
set arrow from 0,103 to 62896.2539062,103 ls 3 nohead
set arrow from 0,104 to 62896.2539062,104 ls 3 nohead
set arrow from 0,105 to 62896.2539062,105 ls 3 nohead
set arrow from 0,106 to 62896.2539062,106 ls 3 nohead
set arrow from 0,107 to 62896.2539062,107 ls 3 nohead
set arrow from 0,108 to 62896.2539062,108 ls 3 nohead
set arrow from 0,109 to 62896.2539062,109 ls 3 nohead
set arrow from 0,110 to 62896.2539062,110 ls 3 nohead
set arrow from 0,111 to 62896.2539062,111 ls 3 nohead
set arrow from 0,112 to 62896.2539062,112 ls 3 nohead
set arrow from 0,113 to 62896.2539062,113 ls 3 nohead
set arrow from 0,114 to 62896.2539062,114 ls 3 nohead
set arrow from 0,115 to 62896.2539062,115 ls 3 nohead
set arrow from 0,116 to 62896.2539062,116 ls 3 nohead
set arrow from 0,117 to 62896.2539062,117 ls 3 nohead
set arrow from 0,118 to 62896.2539062,118 ls 3 nohead
set arrow from 0,119 to 62896.2539062,119 ls 3 nohead
set arrow from 0,120 to 62896.2539062,120 ls 3 nohead
set arrow from 0,121 to 62896.2539062,121 ls 3 nohead
set arrow from 0,122 to 62896.2539062,122 ls 3 nohead
set arrow from 0,123 to 62896.2539062,123 ls 3 nohead
set arrow from 0,124 to 62896.2539062,124 ls 3 nohead
set arrow from 0,125 to 62896.2539062,125 ls 3 nohead
set arrow from 0,126 to 62896.2539062,126 ls 3 nohead
set arrow from 0,127 to 62896.2539062,127 ls 3 nohead
set arrow from 0,128 to 62896.2539062,128 ls 3 nohead
set arrow from 0,129 to 62896.2539062,129 ls 3 nohead
set arrow from 0,130 to 62896.2539062,130 ls 3 nohead
set arrow from 0,131 to 62896.2539062,131 ls 3 nohead
set arrow from 0,132 to 62896.2539062,132 ls 3 nohead
set arrow from 0,133 to 62896.2539062,133 ls 3 nohead
set arrow from 0,134 to 62896.2539062,134 ls 3 nohead
set arrow from 0,135 to 62896.2539062,135 ls 3 nohead
set arrow from 0,136 to 62896.2539062,136 ls 3 nohead
set arrow from 0,137 to 62896.2539062,137 ls 3 nohead
set arrow from 0,138 to 62896.2539062,138 ls 3 nohead
set arrow from 0,139 to 62896.2539062,139 ls 3 nohead
set arrow from 0,140 to 62896.2539062,140 ls 3 nohead
set arrow from 0,141 to 62896.2539062,141 ls 3 nohead
set arrow from 0,142 to 62896.2539062,142 ls 3 nohead
set arrow from 0,143 to 62896.2539062,143 ls 3 nohead
set arrow from 0,144 to 62896.2539062,144 ls 3 nohead
set arrow from 0,145 to 62896.2539062,145 ls 3 nohead
set arrow from 0,146 to 62896.2539062,146 ls 3 nohead
set arrow from 0,147 to 62896.2539062,147 ls 3 nohead
set arrow from 0,148 to 62896.2539062,148 ls 3 nohead
set arrow from 0,149 to 62896.2539062,149 ls 3 nohead
set arrow from 0,150 to 62896.2539062,150 ls 3 nohead
set arrow from 0,151 to 62896.2539062,151 ls 3 nohead
set arrow from 0,152 to 62896.2539062,152 ls 3 nohead
set arrow from 0,153 to 62896.2539062,153 ls 3 nohead
set arrow from 0,154 to 62896.2539062,154 ls 3 nohead
set arrow from 0,155 to 62896.2539062,155 ls 3 nohead
set arrow from 0,156 to 62896.2539062,156 ls 3 nohead
set arrow from 0,157 to 62896.2539062,157 ls 3 nohead
set arrow from 0,158 to 62896.2539062,158 ls 3 nohead
set arrow from 0,159 to 62896.2539062,159 ls 3 nohead
set arrow from 0,160 to 62896.2539062,160 ls 3 nohead
set arrow from 0,161 to 62896.2539062,161 ls 3 nohead
set arrow from 0,162 to 62896.2539062,162 ls 3 nohead
set arrow from 0,163 to 62896.2539062,163 ls 3 nohead
set arrow from 0,164 to 62896.2539062,164 ls 3 nohead
set arrow from 0,165 to 62896.2539062,165 ls 3 nohead
set arrow from 0,166 to 62896.2539062,166 ls 3 nohead
set arrow from 0,167 to 62896.2539062,167 ls 3 nohead
set arrow from 0,168 to 62896.2539062,168 ls 3 nohead
set arrow from 0,169 to 62896.2539062,169 ls 3 nohead
set arrow from 0,170 to 62896.2539062,170 ls 3 nohead
set arrow from 0,171 to 62896.2539062,171 ls 3 nohead
set arrow from 0,172 to 62896.2539062,172 ls 3 nohead
set arrow from 0,173 to 62896.2539062,173 ls 3 nohead
set arrow from 0,174 to 62896.2539062,174 ls 3 nohead
set arrow from 0,175 to 62896.2539062,175 ls 3 nohead
set arrow from 0,176 to 62896.2539062,176 ls 3 nohead
set arrow from 0,177 to 62896.2539062,177 ls 3 nohead
set arrow from 0,178 to 62896.2539062,178 ls 3 nohead
set arrow from 0,179 to 62896.2539062,179 ls 3 nohead
set arrow from 0,180 to 62896.2539062,180 ls 3 nohead
set arrow from 0,181 to 62896.2539062,181 ls 3 nohead
set arrow from 0,182 to 62896.2539062,182 ls 3 nohead
set arrow from 0,183 to 62896.2539062,183 ls 3 nohead
set arrow from 0,184 to 62896.2539062,184 ls 3 nohead
set arrow from 0,185 to 62896.2539062,185 ls 3 nohead
set arrow from 0,186 to 62896.2539062,186 ls 3 nohead
set arrow from 0,187 to 62896.2539062,187 ls 3 nohead
set arrow from 0,188 to 62896.2539062,188 ls 3 nohead
set arrow from 0,189 to 62896.2539062,189 ls 3 nohead
set arrow from 0,190 to 62896.2539062,190 ls 3 nohead
set arrow from 0,191 to 62896.2539062,191 ls 3 nohead
set arrow from 0,192 to 62896.2539062,192 ls 3 nohead
set arrow from 0,193 to 62896.2539062,193 ls 3 nohead
set arrow from 0,194 to 62896.2539062,194 ls 3 nohead
set arrow from 0,195 to 62896.2539062,195 ls 3 nohead
set arrow from 0,196 to 62896.2539062,196 ls 3 nohead
set arrow from 0,197 to 62896.2539062,197 ls 3 nohead
set arrow from 0,198 to 62896.2539062,198 ls 3 nohead
set arrow from 0,199 to 62896.2539062,199 ls 3 nohead
set arrow from 0,200 to 62896.2539062,200 ls 3 nohead
set arrow from 0,201 to 62896.2539062,201 ls 3 nohead
set arrow from 0,202 to 62896.2539062,202 ls 3 nohead
set arrow from 0,203 to 62896.2539062,203 ls 3 nohead
set arrow from 0,204 to 62896.2539062,204 ls 3 nohead
set arrow from 0,205 to 62896.2539062,205 ls 3 nohead
set arrow from 0,206 to 62896.2539062,206 ls 3 nohead
set arrow from 0,207 to 62896.2539062,207 ls 3 nohead
set arrow from 0,208 to 62896.2539062,208 ls 3 nohead
set arrow from 0,209 to 62896.2539062,209 ls 3 nohead
set arrow from 0,210 to 62896.2539062,210 ls 3 nohead
set arrow from 0,211 to 62896.2539062,211 ls 3 nohead
set arrow from 0,212 to 62896.2539062,212 ls 3 nohead
set arrow from 0,213 to 62896.2539062,213 ls 3 nohead
set arrow from 0,214 to 62896.2539062,214 ls 3 nohead
set arrow from 0,215 to 62896.2539062,215 ls 3 nohead
set arrow from 0,216 to 62896.2539062,216 ls 3 nohead
set arrow from 0,217 to 62896.2539062,217 ls 3 nohead
set arrow from 0,218 to 62896.2539062,218 ls 3 nohead
set arrow from 0,219 to 62896.2539062,219 ls 3 nohead
set arrow from 0,220 to 62896.2539062,220 ls 3 nohead
set arrow from 0,221 to 62896.2539062,221 ls 3 nohead
set arrow from 0,222 to 62896.2539062,222 ls 3 nohead
set arrow from 0,223 to 62896.2539062,223 ls 3 nohead
set arrow from 0,224 to 62896.2539062,224 ls 3 nohead
set arrow from 0,225 to 62896.2539062,225 ls 3 nohead
set arrow from 0,226 to 62896.2539062,226 ls 3 nohead
set arrow from 0,227 to 62896.2539062,227 ls 3 nohead
set arrow from 0,228 to 62896.2539062,228 ls 3 nohead
set arrow from 0,229 to 62896.2539062,229 ls 3 nohead
set arrow from 0,230 to 62896.2539062,230 ls 3 nohead
set arrow from 0,231 to 62896.2539062,231 ls 3 nohead
set arrow from 0,232 to 62896.2539062,232 ls 3 nohead
set arrow from 0,233 to 62896.2539062,233 ls 3 nohead
set arrow from 62896.2539062,234 to 125792.507812,234 ls 3 nohead
set arrow from 62896.2539062,235 to 125792.507812,235 ls 3 nohead
set arrow from 62896.2539062,236 to 125792.507812,236 ls 3 nohead
set arrow from 62896.2539062,237 to 125792.507812,237 ls 3 nohead
set arrow from 62896.2539062,238 to 125792.507812,238 ls 3 nohead
set arrow from 62896.2539062,239 to 125792.507812,239 ls 3 nohead
set arrow from 62896.2539062,240 to 125792.507812,240 ls 3 nohead
set arrow from 62896.2539062,241 to 125792.507812,241 ls 3 nohead
set arrow from 62896.2539062,242 to 125792.507812,242 ls 3 nohead
set arrow from 62896.2539062,243 to 125792.507812,243 ls 3 nohead
set arrow from 62896.2539062,244 to 125792.507812,244 ls 3 nohead
set arrow from 62896.2539062,245 to 125792.507812,245 ls 3 nohead
set arrow from 62896.2539062,246 to 125792.507812,246 ls 3 nohead
set arrow from 62896.2539062,247 to 125792.507812,247 ls 3 nohead
set arrow from 62896.2539062,248 to 125792.507812,248 ls 3 nohead
set arrow from 62896.2539062,249 to 125792.507812,249 ls 3 nohead
set arrow from 62896.2539062,250 to 125792.507812,250 ls 3 nohead
set arrow from 62896.2539062,251 to 125792.507812,251 ls 3 nohead
set arrow from 62896.2539062,252 to 125792.507812,252 ls 3 nohead
set arrow from 62896.2539062,253 to 125792.507812,253 ls 3 nohead
set arrow from 62896.2539062,254 to 125792.507812,254 ls 3 nohead
set arrow from 62896.2539062,255 to 125792.507812,255 ls 3 nohead
set ytics (256)
set xrange [0:125792.507812]
set yrange [0:256]
set output "../Experiments/midasExp/leaflet-finder/Spark/AppData/spParCCweak/spParCC_262K_16384_256_1-pilot.0000/unit.000000/app-20170221094612-0000_0_sim_no_stragglers_waterfall.pdf"
plot -1
