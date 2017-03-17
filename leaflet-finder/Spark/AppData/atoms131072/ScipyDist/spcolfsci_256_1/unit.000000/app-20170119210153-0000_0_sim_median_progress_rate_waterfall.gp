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

set arrow from 0,0 to 2018,0 ls 3 nohead
set arrow from 0,1 to 2029,1 ls 3 nohead
set arrow from 0,2 to 2025,2 ls 3 nohead
set arrow from 0,3 to 2023,3 ls 3 nohead
set arrow from 0,4 to 2028,4 ls 3 nohead
set arrow from 0,5 to 2031,5 ls 3 nohead
set arrow from 0,6 to 2023,6 ls 3 nohead
set arrow from 0,7 to 2024,7 ls 3 nohead
set arrow from 0,8 to 2024,8 ls 3 nohead
set arrow from 0,9 to 2026,9 ls 3 nohead
set arrow from 0,10 to 2022,10 ls 3 nohead
set arrow from 0,11 to 2028,11 ls 3 nohead
set arrow from 0,12 to 2033,12 ls 3 nohead
set arrow from 0,13 to 2023,13 ls 3 nohead
set arrow from 0,14 to 2024,14 ls 3 nohead
set arrow from 0,15 to 2029,15 ls 3 nohead
set arrow from 0,16 to 2027,16 ls 3 nohead
set arrow from 0,17 to 2032,17 ls 3 nohead
set arrow from 0,18 to 2034,18 ls 3 nohead
set arrow from 0,19 to 2023,19 ls 3 nohead
set arrow from 0,20 to 2021,20 ls 3 nohead
set arrow from 0,21 to 2032,21 ls 3 nohead
set arrow from 0,22 to 2031,22 ls 3 nohead
set arrow from 0,23 to 2030,23 ls 3 nohead
set arrow from 0,24 to 2147,24 ls 3 nohead
set arrow from 0,25 to 2136,25 ls 3 nohead
set arrow from 0,26 to 2147,26 ls 3 nohead
set arrow from 0,27 to 2148,27 ls 3 nohead
set arrow from 0,28 to 2150,28 ls 3 nohead
set arrow from 0,29 to 2145,29 ls 3 nohead
set arrow from 0,30 to 2141,30 ls 3 nohead
set arrow from 0,31 to 2150,31 ls 3 nohead
set arrow from 0,32 to 2144,32 ls 3 nohead
set arrow from 0,33 to 2137,33 ls 3 nohead
set arrow from 0,34 to 2145,34 ls 3 nohead
set arrow from 0,35 to 2142,35 ls 3 nohead
set arrow from 0,36 to 2149,36 ls 3 nohead
set arrow from 0,37 to 2144,37 ls 3 nohead
set arrow from 0,38 to 2148,38 ls 3 nohead
set arrow from 0,39 to 2146,39 ls 3 nohead
set arrow from 0,40 to 2142,40 ls 3 nohead
set arrow from 0,41 to 2140,41 ls 3 nohead
set arrow from 0,42 to 2143,42 ls 3 nohead
set arrow from 0,43 to 2145,43 ls 3 nohead
set arrow from 0,44 to 2154,44 ls 3 nohead
set arrow from 0,45 to 2142,45 ls 3 nohead
set arrow from 0,46 to 2170,46 ls 3 nohead
set arrow from 0,47 to 2168,47 ls 3 nohead
set arrow from 0,48 to 2222,48 ls 3 nohead
set arrow from 0,49 to 2212,49 ls 3 nohead
set arrow from 0,50 to 2215,50 ls 3 nohead
set arrow from 0,51 to 2221,51 ls 3 nohead
set arrow from 0,52 to 2217,52 ls 3 nohead
set arrow from 0,53 to 2214,53 ls 3 nohead
set arrow from 0,54 to 2210,54 ls 3 nohead
set arrow from 0,55 to 2216,55 ls 3 nohead
set arrow from 0,56 to 2221,56 ls 3 nohead
set arrow from 0,57 to 2220,57 ls 3 nohead
set arrow from 0,58 to 2212,58 ls 3 nohead
set arrow from 0,59 to 2223,59 ls 3 nohead
set arrow from 0,60 to 2225,60 ls 3 nohead
set arrow from 0,61 to 2218,61 ls 3 nohead
set arrow from 0,62 to 2218,62 ls 3 nohead
set arrow from 0,63 to 2221,63 ls 3 nohead
set arrow from 0,64 to 2225,64 ls 3 nohead
set arrow from 0,65 to 2221,65 ls 3 nohead
set arrow from 0,66 to 2213,66 ls 3 nohead
set arrow from 0,67 to 2217,67 ls 3 nohead
set arrow from 0,68 to 2222,68 ls 3 nohead
set arrow from 0,69 to 2215,69 ls 3 nohead
set arrow from 0,70 to 2217,70 ls 3 nohead
set arrow from 0,71 to 2215,71 ls 3 nohead
set arrow from 0,72 to 2143,72 ls 3 nohead
set arrow from 0,73 to 2149,73 ls 3 nohead
set arrow from 0,74 to 2147,74 ls 3 nohead
set arrow from 0,75 to 2140,75 ls 3 nohead
set arrow from 0,76 to 2140,76 ls 3 nohead
set arrow from 0,77 to 2151,77 ls 3 nohead
set arrow from 0,78 to 2145,78 ls 3 nohead
set arrow from 0,79 to 2146,79 ls 3 nohead
set arrow from 0,80 to 2141,80 ls 3 nohead
set arrow from 0,81 to 2143,81 ls 3 nohead
set arrow from 0,82 to 2148,82 ls 3 nohead
set arrow from 0,83 to 2146,83 ls 3 nohead
set arrow from 0,84 to 2144,84 ls 3 nohead
set arrow from 0,85 to 2153,85 ls 3 nohead
set arrow from 0,86 to 2151,86 ls 3 nohead
set arrow from 0,87 to 2147,87 ls 3 nohead
set arrow from 0,88 to 2156,88 ls 3 nohead
set arrow from 0,89 to 2154,89 ls 3 nohead
set arrow from 0,90 to 2144,90 ls 3 nohead
set arrow from 0,91 to 2147,91 ls 3 nohead
set arrow from 0,92 to 2152,92 ls 3 nohead
set arrow from 0,93 to 2156,93 ls 3 nohead
set arrow from 0,94 to 2150,94 ls 3 nohead
set arrow from 0,95 to 2177,95 ls 3 nohead
set arrow from 0,96 to 2254,96 ls 3 nohead
set arrow from 0,97 to 2257,97 ls 3 nohead
set arrow from 0,98 to 2247,98 ls 3 nohead
set arrow from 0,99 to 2251,99 ls 3 nohead
set arrow from 0,100 to 2245,100 ls 3 nohead
set arrow from 0,101 to 2244,101 ls 3 nohead
set arrow from 0,102 to 2257,102 ls 3 nohead
set arrow from 0,103 to 2254,103 ls 3 nohead
set arrow from 0,104 to 2249,104 ls 3 nohead
set arrow from 0,105 to 2251,105 ls 3 nohead
set arrow from 0,106 to 2257,106 ls 3 nohead
set arrow from 0,107 to 2252,107 ls 3 nohead
set arrow from 0,108 to 2254,108 ls 3 nohead
set arrow from 0,109 to 2257,109 ls 3 nohead
set arrow from 0,110 to 2259,110 ls 3 nohead
set arrow from 0,111 to 2252,111 ls 3 nohead
set arrow from 0,112 to 2249,112 ls 3 nohead
set arrow from 0,113 to 2248,113 ls 3 nohead
set arrow from 0,114 to 2250,114 ls 3 nohead
set arrow from 0,115 to 2255,115 ls 3 nohead
set arrow from 0,116 to 2258,116 ls 3 nohead
set arrow from 0,117 to 2260,117 ls 3 nohead
set arrow from 0,118 to 2263,118 ls 3 nohead
set arrow from 0,119 to 2265,119 ls 3 nohead
set arrow from 0,120 to 2233,120 ls 3 nohead
set arrow from 0,121 to 2228,121 ls 3 nohead
set arrow from 0,122 to 2226,122 ls 3 nohead
set arrow from 0,123 to 2235,123 ls 3 nohead
set arrow from 0,124 to 2228,124 ls 3 nohead
set arrow from 0,125 to 2230,125 ls 3 nohead
set arrow from 0,126 to 2240,126 ls 3 nohead
set arrow from 0,127 to 2242,127 ls 3 nohead
set arrow from 0,128 to 2234,128 ls 3 nohead
set arrow from 0,129 to 2237,129 ls 3 nohead
set arrow from 0,130 to 2243,130 ls 3 nohead
set arrow from 0,131 to 2238,131 ls 3 nohead
set arrow from 0,132 to 2235,132 ls 3 nohead
set arrow from 0,133 to 2243,133 ls 3 nohead
set arrow from 0,134 to 2238,134 ls 3 nohead
set arrow from 0,135 to 2241,135 ls 3 nohead
set arrow from 0,136 to 2243,136 ls 3 nohead
set arrow from 0,137 to 2235,137 ls 3 nohead
set arrow from 0,138 to 2247,138 ls 3 nohead
set arrow from 0,139 to 2239,139 ls 3 nohead
set arrow from 0,140 to 2234,140 ls 3 nohead
set arrow from 0,141 to 2238,141 ls 3 nohead
set arrow from 0,142 to 2239,142 ls 3 nohead
set arrow from 0,143 to 2245,143 ls 3 nohead
set arrow from 0,144 to 2154,144 ls 3 nohead
set arrow from 0,145 to 2145,145 ls 3 nohead
set arrow from 0,146 to 2156,146 ls 3 nohead
set arrow from 0,147 to 2149,147 ls 3 nohead
set arrow from 0,148 to 2143,148 ls 3 nohead
set arrow from 0,149 to 2155,149 ls 3 nohead
set arrow from 0,150 to 2152,150 ls 3 nohead
set arrow from 0,151 to 2153,151 ls 3 nohead
set arrow from 0,152 to 2148,152 ls 3 nohead
set arrow from 0,153 to 2148,153 ls 3 nohead
set arrow from 0,154 to 2145,154 ls 3 nohead
set arrow from 0,155 to 2154,155 ls 3 nohead
set arrow from 0,156 to 2148,156 ls 3 nohead
set arrow from 0,157 to 2147,157 ls 3 nohead
set arrow from 0,158 to 2158,158 ls 3 nohead
set arrow from 0,159 to 2154,159 ls 3 nohead
set arrow from 0,160 to 2157,160 ls 3 nohead
set arrow from 0,161 to 2151,161 ls 3 nohead
set arrow from 0,162 to 2153,162 ls 3 nohead
set arrow from 0,163 to 2156,163 ls 3 nohead
set arrow from 0,164 to 2148,164 ls 3 nohead
set arrow from 0,165 to 2152,165 ls 3 nohead
set arrow from 0,166 to 2158,166 ls 3 nohead
set arrow from 0,167 to 2167,167 ls 3 nohead
set arrow from 0,168 to 2278,168 ls 3 nohead
set arrow from 0,169 to 2279,169 ls 3 nohead
set arrow from 0,170 to 2276,170 ls 3 nohead
set arrow from 0,171 to 2270,171 ls 3 nohead
set arrow from 0,172 to 2280,172 ls 3 nohead
set arrow from 0,173 to 2275,173 ls 3 nohead
set arrow from 0,174 to 2270,174 ls 3 nohead
set arrow from 0,175 to 2274,175 ls 3 nohead
set arrow from 0,176 to 2273,176 ls 3 nohead
set arrow from 0,177 to 2283,177 ls 3 nohead
set arrow from 0,178 to 2277,178 ls 3 nohead
set arrow from 0,179 to 2274,179 ls 3 nohead
set arrow from 0,180 to 2280,180 ls 3 nohead
set arrow from 0,181 to 2276,181 ls 3 nohead
set arrow from 0,182 to 2276,182 ls 3 nohead
set arrow from 0,183 to 2273,183 ls 3 nohead
set arrow from 0,184 to 2278,184 ls 3 nohead
set arrow from 0,185 to 2281,185 ls 3 nohead
set arrow from 0,186 to 2281,186 ls 3 nohead
set arrow from 0,187 to 2275,187 ls 3 nohead
set arrow from 0,188 to 2284,188 ls 3 nohead
set arrow from 0,189 to 2274,189 ls 3 nohead
set arrow from 0,190 to 2282,190 ls 3 nohead
set arrow from 0,191 to 2286,191 ls 3 nohead
set arrow from 0,192 to 2266,192 ls 3 nohead
set arrow from 0,193 to 2267,193 ls 3 nohead
set arrow from 0,194 to 2257,194 ls 3 nohead
set arrow from 0,195 to 2264,195 ls 3 nohead
set arrow from 0,196 to 2260,196 ls 3 nohead
set arrow from 0,197 to 2260,197 ls 3 nohead
set arrow from 0,198 to 2260,198 ls 3 nohead
set arrow from 0,199 to 2260,199 ls 3 nohead
set arrow from 0,200 to 2265,200 ls 3 nohead
set arrow from 0,201 to 2267,201 ls 3 nohead
set arrow from 0,202 to 2264,202 ls 3 nohead
set arrow from 0,203 to 2273,203 ls 3 nohead
set arrow from 0,204 to 2268,204 ls 3 nohead
set arrow from 0,205 to 2267,205 ls 3 nohead
set arrow from 0,206 to 2261,206 ls 3 nohead
set arrow from 0,207 to 2264,207 ls 3 nohead
set arrow from 0,208 to 2265,208 ls 3 nohead
set arrow from 0,209 to 2264,209 ls 3 nohead
set arrow from 0,210 to 2269,210 ls 3 nohead
set arrow from 0,211 to 2272,211 ls 3 nohead
set arrow from 0,212 to 2268,212 ls 3 nohead
set arrow from 0,213 to 2261,213 ls 3 nohead
set arrow from 0,214 to 2274,214 ls 3 nohead
set arrow from 0,215 to 2297,215 ls 3 nohead
set arrow from 0,216 to 2304,216 ls 3 nohead
set arrow from 0,217 to 2294,217 ls 3 nohead
set arrow from 0,218 to 2303,218 ls 3 nohead
set arrow from 0,219 to 2297,219 ls 3 nohead
set arrow from 0,220 to 2297,220 ls 3 nohead
set arrow from 0,221 to 2298,221 ls 3 nohead
set arrow from 0,222 to 2303,222 ls 3 nohead
set arrow from 2018,223 to 4313,223 ls 3 nohead
set arrow from 2021,224 to 4315,224 ls 3 nohead
set arrow from 2022,225 to 4320,225 ls 3 nohead
set arrow from 2023,226 to 4315,226 ls 3 nohead
set arrow from 2023,227 to 4322,227 ls 3 nohead
set arrow from 2023,228 to 4327,228 ls 3 nohead
set arrow from 2023,229 to 4326,229 ls 3 nohead
set arrow from 2024,230 to 4319,230 ls 3 nohead
set arrow from 2024,231 to 4331,231 ls 3 nohead
set arrow from 2024,232 to 4320,232 ls 3 nohead
set arrow from 2025,233 to 4322,233 ls 3 nohead
set arrow from 2026,234 to 4328,234 ls 3 nohead
set arrow from 2027,235 to 4322,235 ls 3 nohead
set arrow from 2028,236 to 4328,236 ls 3 nohead
set arrow from 2028,237 to 4332,237 ls 3 nohead
set arrow from 2029,238 to 4310,238 ls 3 nohead
set arrow from 2029,239 to 4352,239 ls 3 nohead
set arrow from 2030,240 to 4282,240 ls 3 nohead
set arrow from 2031,241 to 4289,241 ls 3 nohead
set arrow from 2031,242 to 4288,242 ls 3 nohead
set arrow from 2032,243 to 4290,243 ls 3 nohead
set arrow from 2032,244 to 4289,244 ls 3 nohead
set arrow from 2033,245 to 4289,245 ls 3 nohead
set arrow from 2034,246 to 4288,246 ls 3 nohead
set arrow from 2136,247 to 4393,247 ls 3 nohead
set arrow from 2137,248 to 4396,248 ls 3 nohead
set arrow from 2140,249 to 4400,249 ls 3 nohead
set arrow from 2140,250 to 4394,250 ls 3 nohead
set arrow from 2140,251 to 4400,251 ls 3 nohead
set arrow from 2141,252 to 4402,252 ls 3 nohead
set arrow from 2141,253 to 4398,253 ls 3 nohead
set arrow from 2142,254 to 4400,254 ls 3 nohead
set arrow from 2142,255 to 4399,255 ls 3 nohead
set ytics (256)
set xrange [0:4399]
set yrange [0:256]
set output "../Experiments/midasExp/leaflet-finder/Spark/AppData/atoms131072/ScipyDist/spcolfsci_256_1/unit.000000/app-20170119210153-0000_0_sim_median_progress_rate_waterfall.pdf"
plot -1
