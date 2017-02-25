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

set arrow from 0,0 to 2170,0 ls 3 nohead
set arrow from 0,1 to 2150,1 ls 3 nohead
set arrow from 0,2 to 2154,2 ls 3 nohead
set arrow from 0,3 to 2147,3 ls 3 nohead
set arrow from 0,4 to 2150,4 ls 3 nohead
set arrow from 0,5 to 2147,5 ls 3 nohead
set arrow from 0,6 to 2148,6 ls 3 nohead
set arrow from 0,7 to 2149,7 ls 3 nohead
set arrow from 0,8 to 2168,8 ls 3 nohead
set arrow from 0,9 to 2145,9 ls 3 nohead
set arrow from 0,10 to 2148,10 ls 3 nohead
set arrow from 0,11 to 2145,11 ls 3 nohead
set arrow from 0,12 to 2144,12 ls 3 nohead
set arrow from 0,13 to 2146,13 ls 3 nohead
set arrow from 0,14 to 2144,14 ls 3 nohead
set arrow from 0,15 to 2141,15 ls 3 nohead
set arrow from 0,16 to 2145,16 ls 3 nohead
set arrow from 0,17 to 2142,17 ls 3 nohead
set arrow from 0,18 to 2142,18 ls 3 nohead
set arrow from 0,19 to 2143,19 ls 3 nohead
set arrow from 0,20 to 2142,20 ls 3 nohead
set arrow from 0,21 to 2136,21 ls 3 nohead
set arrow from 0,22 to 2140,22 ls 3 nohead
set arrow from 0,23 to 2137,23 ls 3 nohead
set arrow from 0,24 to 2222,24 ls 3 nohead
set arrow from 0,25 to 2225,25 ls 3 nohead
set arrow from 0,26 to 2225,26 ls 3 nohead
set arrow from 0,27 to 2221,27 ls 3 nohead
set arrow from 0,28 to 2223,28 ls 3 nohead
set arrow from 0,29 to 2221,29 ls 3 nohead
set arrow from 0,30 to 2220,30 ls 3 nohead
set arrow from 0,31 to 2221,31 ls 3 nohead
set arrow from 0,32 to 2221,32 ls 3 nohead
set arrow from 0,33 to 2222,33 ls 3 nohead
set arrow from 0,34 to 2217,34 ls 3 nohead
set arrow from 0,35 to 2218,35 ls 3 nohead
set arrow from 0,36 to 2218,36 ls 3 nohead
set arrow from 0,37 to 2215,37 ls 3 nohead
set arrow from 0,38 to 2216,38 ls 3 nohead
set arrow from 0,39 to 2214,39 ls 3 nohead
set arrow from 0,40 to 2217,40 ls 3 nohead
set arrow from 0,41 to 2217,41 ls 3 nohead
set arrow from 0,42 to 2212,42 ls 3 nohead
set arrow from 0,43 to 2212,43 ls 3 nohead
set arrow from 0,44 to 2215,44 ls 3 nohead
set arrow from 0,45 to 2213,45 ls 3 nohead
set arrow from 0,46 to 2215,46 ls 3 nohead
set arrow from 0,47 to 2210,47 ls 3 nohead
set arrow from 0,48 to 2033,48 ls 3 nohead
set arrow from 0,49 to 2031,49 ls 3 nohead
set arrow from 0,50 to 2034,50 ls 3 nohead
set arrow from 0,51 to 2029,51 ls 3 nohead
set arrow from 0,52 to 2032,52 ls 3 nohead
set arrow from 0,53 to 2032,53 ls 3 nohead
set arrow from 0,54 to 2028,54 ls 3 nohead
set arrow from 0,55 to 2031,55 ls 3 nohead
set arrow from 0,56 to 2028,56 ls 3 nohead
set arrow from 0,57 to 2029,57 ls 3 nohead
set arrow from 0,58 to 2025,58 ls 3 nohead
set arrow from 0,59 to 2026,59 ls 3 nohead
set arrow from 0,60 to 2027,60 ls 3 nohead
set arrow from 0,61 to 2023,61 ls 3 nohead
set arrow from 0,62 to 2024,62 ls 3 nohead
set arrow from 0,63 to 2023,63 ls 3 nohead
set arrow from 0,64 to 2024,64 ls 3 nohead
set arrow from 0,65 to 2023,65 ls 3 nohead
set arrow from 0,66 to 2024,66 ls 3 nohead
set arrow from 0,67 to 2018,67 ls 3 nohead
set arrow from 0,68 to 2022,68 ls 3 nohead
set arrow from 0,69 to 2023,69 ls 3 nohead
set arrow from 0,70 to 2030,70 ls 3 nohead
set arrow from 0,71 to 2021,71 ls 3 nohead
set arrow from 0,72 to 2263,72 ls 3 nohead
set arrow from 0,73 to 2257,73 ls 3 nohead
set arrow from 0,74 to 2257,74 ls 3 nohead
set arrow from 0,75 to 2259,75 ls 3 nohead
set arrow from 0,76 to 2254,76 ls 3 nohead
set arrow from 0,77 to 2260,77 ls 3 nohead
set arrow from 0,78 to 2257,78 ls 3 nohead
set arrow from 0,79 to 2257,79 ls 3 nohead
set arrow from 0,80 to 2258,80 ls 3 nohead
set arrow from 0,81 to 2254,81 ls 3 nohead
set arrow from 0,82 to 2254,82 ls 3 nohead
set arrow from 0,83 to 2255,83 ls 3 nohead
set arrow from 0,84 to 2251,84 ls 3 nohead
set arrow from 0,85 to 2251,85 ls 3 nohead
set arrow from 0,86 to 2252,86 ls 3 nohead
set arrow from 0,87 to 2252,87 ls 3 nohead
set arrow from 0,88 to 2247,88 ls 3 nohead
set arrow from 0,89 to 2249,89 ls 3 nohead
set arrow from 0,90 to 2250,90 ls 3 nohead
set arrow from 0,91 to 2265,91 ls 3 nohead
set arrow from 0,92 to 2249,92 ls 3 nohead
set arrow from 0,93 to 2245,93 ls 3 nohead
set arrow from 0,94 to 2248,94 ls 3 nohead
set arrow from 0,95 to 2244,95 ls 3 nohead
set arrow from 0,96 to 2247,96 ls 3 nohead
set arrow from 0,97 to 2243,97 ls 3 nohead
set arrow from 0,98 to 2242,98 ls 3 nohead
set arrow from 0,99 to 2243,99 ls 3 nohead
set arrow from 0,100 to 2240,100 ls 3 nohead
set arrow from 0,101 to 2245,101 ls 3 nohead
set arrow from 0,102 to 2243,102 ls 3 nohead
set arrow from 0,103 to 2235,103 ls 3 nohead
set arrow from 0,104 to 2241,104 ls 3 nohead
set arrow from 0,105 to 2233,105 ls 3 nohead
set arrow from 0,106 to 2238,106 ls 3 nohead
set arrow from 0,107 to 2237,107 ls 3 nohead
set arrow from 0,108 to 2238,108 ls 3 nohead
set arrow from 0,109 to 2239,109 ls 3 nohead
set arrow from 0,110 to 2239,110 ls 3 nohead
set arrow from 0,111 to 2238,111 ls 3 nohead
set arrow from 0,112 to 2234,112 ls 3 nohead
set arrow from 0,113 to 2235,113 ls 3 nohead
set arrow from 0,114 to 2230,114 ls 3 nohead
set arrow from 0,115 to 2228,115 ls 3 nohead
set arrow from 0,116 to 2235,116 ls 3 nohead
set arrow from 0,117 to 2228,117 ls 3 nohead
set arrow from 0,118 to 2234,118 ls 3 nohead
set arrow from 0,119 to 2226,119 ls 3 nohead
set arrow from 0,120 to 2177,120 ls 3 nohead
set arrow from 0,121 to 2151,121 ls 3 nohead
set arrow from 0,122 to 2156,122 ls 3 nohead
set arrow from 0,123 to 2156,123 ls 3 nohead
set arrow from 0,124 to 2149,124 ls 3 nohead
set arrow from 0,125 to 2153,125 ls 3 nohead
set arrow from 0,126 to 2154,126 ls 3 nohead
set arrow from 0,127 to 2147,127 ls 3 nohead
set arrow from 0,128 to 2151,128 ls 3 nohead
set arrow from 0,129 to 2152,129 ls 3 nohead
set arrow from 0,130 to 2146,130 ls 3 nohead
set arrow from 0,131 to 2148,131 ls 3 nohead
set arrow from 0,132 to 2145,132 ls 3 nohead
set arrow from 0,133 to 2150,133 ls 3 nohead
set arrow from 0,134 to 2143,134 ls 3 nohead
set arrow from 0,135 to 2146,135 ls 3 nohead
set arrow from 0,136 to 2147,136 ls 3 nohead
set arrow from 0,137 to 2143,137 ls 3 nohead
set arrow from 0,138 to 2147,138 ls 3 nohead
set arrow from 0,139 to 2141,139 ls 3 nohead
set arrow from 0,140 to 2144,140 ls 3 nohead
set arrow from 0,141 to 2140,141 ls 3 nohead
set arrow from 0,142 to 2140,142 ls 3 nohead
set arrow from 0,143 to 2144,143 ls 3 nohead
set arrow from 0,144 to 2283,144 ls 3 nohead
set arrow from 0,145 to 2286,145 ls 3 nohead
set arrow from 0,146 to 2279,146 ls 3 nohead
set arrow from 0,147 to 2284,147 ls 3 nohead
set arrow from 0,148 to 2278,148 ls 3 nohead
set arrow from 0,149 to 2280,149 ls 3 nohead
set arrow from 0,150 to 2281,150 ls 3 nohead
set arrow from 0,151 to 2282,151 ls 3 nohead
set arrow from 0,152 to 2280,152 ls 3 nohead
set arrow from 0,153 to 2281,153 ls 3 nohead
set arrow from 0,154 to 2276,154 ls 3 nohead
set arrow from 0,155 to 2277,155 ls 3 nohead
set arrow from 0,156 to 2278,156 ls 3 nohead
set arrow from 0,157 to 2275,157 ls 3 nohead
set arrow from 0,158 to 2276,158 ls 3 nohead
set arrow from 0,159 to 2276,159 ls 3 nohead
set arrow from 0,160 to 2274,160 ls 3 nohead
set arrow from 0,161 to 2274,161 ls 3 nohead
set arrow from 0,162 to 2273,162 ls 3 nohead
set arrow from 0,163 to 2275,163 ls 3 nohead
set arrow from 0,164 to 2273,164 ls 3 nohead
set arrow from 0,165 to 2274,165 ls 3 nohead
set arrow from 0,166 to 2270,166 ls 3 nohead
set arrow from 0,167 to 2270,167 ls 3 nohead
set arrow from 0,168 to 2304,168 ls 3 nohead
set arrow from 0,169 to 2303,169 ls 3 nohead
set arrow from 0,170 to 2307,170 ls 3 nohead
set arrow from 0,171 to 2303,171 ls 3 nohead
set arrow from 0,172 to 2323,172 ls 3 nohead
set arrow from 0,173 to 2304,173 ls 3 nohead
set arrow from 0,174 to 2303,174 ls 3 nohead
set arrow from 0,175 to 2297,175 ls 3 nohead
set arrow from 0,176 to 2304,176 ls 3 nohead
set arrow from 0,177 to 2298,177 ls 3 nohead
set arrow from 0,178 to 2302,178 ls 3 nohead
set arrow from 0,179 to 2297,179 ls 3 nohead
set arrow from 0,180 to 2297,180 ls 3 nohead
set arrow from 0,181 to 2298,181 ls 3 nohead
set arrow from 0,182 to 2299,182 ls 3 nohead
set arrow from 0,183 to 2300,183 ls 3 nohead
set arrow from 0,184 to 2294,184 ls 3 nohead
set arrow from 0,185 to 2295,185 ls 3 nohead
set arrow from 0,186 to 2297,186 ls 3 nohead
set arrow from 0,187 to 2294,187 ls 3 nohead
set arrow from 0,188 to 2296,188 ls 3 nohead
set arrow from 0,189 to 2295,189 ls 3 nohead
set arrow from 0,190 to 2295,190 ls 3 nohead
set arrow from 0,191 to 2292,191 ls 3 nohead
set arrow from 0,192 to 2273,192 ls 3 nohead
set arrow from 0,193 to 2274,193 ls 3 nohead
set arrow from 0,194 to 2266,194 ls 3 nohead
set arrow from 0,195 to 2267,195 ls 3 nohead
set arrow from 0,196 to 2272,196 ls 3 nohead
set arrow from 0,197 to 2269,197 ls 3 nohead
set arrow from 0,198 to 2267,198 ls 3 nohead
set arrow from 0,199 to 2268,199 ls 3 nohead
set arrow from 0,200 to 2267,200 ls 3 nohead
set arrow from 0,201 to 2268,201 ls 3 nohead
set arrow from 0,202 to 2264,202 ls 3 nohead
set arrow from 0,203 to 2265,203 ls 3 nohead
set arrow from 0,204 to 2281,204 ls 3 nohead
set arrow from 0,205 to 2264,205 ls 3 nohead
set arrow from 0,206 to 2265,206 ls 3 nohead
set arrow from 0,207 to 2264,207 ls 3 nohead
set arrow from 0,208 to 2264,208 ls 3 nohead
set arrow from 0,209 to 2260,209 ls 3 nohead
set arrow from 0,210 to 2260,210 ls 3 nohead
set arrow from 0,211 to 2260,211 ls 3 nohead
set arrow from 0,212 to 2260,212 ls 3 nohead
set arrow from 0,213 to 2261,213 ls 3 nohead
set arrow from 0,214 to 2257,214 ls 3 nohead
set arrow from 0,215 to 2261,215 ls 3 nohead
set arrow from 0,216 to 2156,216 ls 3 nohead
set arrow from 0,217 to 2158,217 ls 3 nohead
set arrow from 0,218 to 2154,218 ls 3 nohead
set arrow from 0,219 to 2155,219 ls 3 nohead
set arrow from 0,220 to 2157,220 ls 3 nohead
set arrow from 0,221 to 2158,221 ls 3 nohead
set arrow from 0,222 to 2154,222 ls 3 nohead
set arrow from 2018,223 to 4174,223 ls 3 nohead
set arrow from 2021,224 to 4174,224 ls 3 nohead
set arrow from 2022,225 to 4176,225 ls 3 nohead
set arrow from 2023,226 to 4175,226 ls 3 nohead
set arrow from 2023,227 to 4190,227 ls 3 nohead
set arrow from 2023,228 to 4176,228 ls 3 nohead
set arrow from 2023,229 to 4172,229 ls 3 nohead
set arrow from 2024,230 to 4175,230 ls 3 nohead
set arrow from 2024,231 to 4176,231 ls 3 nohead
set arrow from 2024,232 to 4172,232 ls 3 nohead
set arrow from 2025,233 to 4173,233 ls 3 nohead
set arrow from 2026,234 to 4174,234 ls 3 nohead
set arrow from 2027,235 to 4172,235 ls 3 nohead
set arrow from 2028,236 to 4175,236 ls 3 nohead
set arrow from 2028,237 to 4173,237 ls 3 nohead
set arrow from 2029,238 to 4177,238 ls 3 nohead
set arrow from 2029,239 to 4172,239 ls 3 nohead
set arrow from 2030,240 to 4288,240 ls 3 nohead
set arrow from 2031,241 to 4292,241 ls 3 nohead
set arrow from 2031,242 to 4288,242 ls 3 nohead
set arrow from 2032,243 to 4292,243 ls 3 nohead
set arrow from 2032,244 to 4292,244 ls 3 nohead
set arrow from 2033,245 to 4291,245 ls 3 nohead
set arrow from 2034,246 to 4293,246 ls 3 nohead
set arrow from 2136,247 to 4393,247 ls 3 nohead
set arrow from 2137,248 to 4394,248 ls 3 nohead
set arrow from 2140,249 to 4396,249 ls 3 nohead
set arrow from 2140,250 to 4397,250 ls 3 nohead
set arrow from 2140,251 to 4398,251 ls 3 nohead
set arrow from 2141,252 to 4393,252 ls 3 nohead
set arrow from 2141,253 to 4395,253 ls 3 nohead
set arrow from 2142,254 to 4396,254 ls 3 nohead
set arrow from 2142,255 to 4399,255 ls 3 nohead
set ytics (256)
set xrange [0:4399]
set yrange [0:256]
set output "../Experiments/midasExp/leaflet-finder/Spark/AppData/atoms131072/ScipyDist/spcolfsci_256_1/unit.000000/app-20170119210153-0000_0_simulated_waterfall.pdf"
plot -1
