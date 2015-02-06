
set output "puseries-n.svg"
set terminal svg

set title "Plutonium Buildup: 10 Reactors"
set xlabel "Time (month)"
set ylabel "Pu (metric tonnes)"
set key center top Left reverse

plot "open-n.pudat" using 1:($2/1000) every ::1 title "once through" with lines lt 1 linewidth 8 linecolor rgb "#1B9E77", \
     "mod-open-n.pudat" using 1:($2/1000) every ::1 title "1-pass recycle" with lines lt 1 linewidth 8 linecolor rgb "#7570B3", \
     "closed-n.pudat" using 1:($2/1000) every ::1 title "infinite-pass recycle" with lines lt 1 linewidth 8 linecolor rgb "#D95F02"

set output "puseries-n.eps"
set terminal postscript eps

set auto x
set title "Plutonium Buildup: 10 Reactors" font ",26"
set xlabel "Time (month)" font ",21"
set ylabel "Pu (metric tonnes)" font ",21" offset -1,0
set ytics font ",21"
set xtics font ",21"
set key center top font ",21" Left reverse
set key spacing 3.0

replot

