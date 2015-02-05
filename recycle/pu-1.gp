
set output "puseries-1.svg"
set terminal svg

set title "Plutonium Buildup: 1 Reactor"
set xlabel "Time (month)"
set ylabel "Pu (metric tonnes)"
set key center top

plot "open-1.pudat" using 1:($2/1000) every ::1 title "Open" with lines linecolor rgb "#1B9E77", \
     "mod-open-1.pudat" using 1:($2/1000) every ::1 title "Modified Open" with lines linecolor rgb "#7570B3", \
     "closed-1.pudat" using 1:($2/1000) every ::1 title "Closed" with lines linecolor rgb "#D95F02"

set output "puseries-1.eps"
set terminal postscript eps

set auto x
set title "Plutonium Buildup: 1 Reactor" font ",26"
set xlabel "Time (month)" font ",21"
set ylabel "Pu (metric tonnes)" font ",21" offset -1,0
set ytics font ",21"
set xtics font ",21"
set key center top font ",21"
set key spacing 3.0

replot

