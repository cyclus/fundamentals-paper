
set output "puseries-1.svg"
set terminal svg

set title "Plutonium Buildup: many reactors"
set xlabel "Time (month)"
set ylabel "Pu (metric tonnes)"
set key center top

plot "open-1.pudat" using 1:($2/1000) every ::1 title "Open" with linespoints linecolor rgb "#1B9E77", \
     "mod-open-1.pudat" using 1:($2/1000) every ::1 title "Modified Open" with linespoints linecolor rgb "#7570B3", \
     "closed-1.pudat" using 1:($2/1000) every ::1 title "Closed" with linespoints linecolor rgb "#D95F02"

set output "puseries.eps"
set terminal postscript eps

set auto x
set xlabel "Time (month)" font ",28"
set ylabel "Pu (metric tonnes)" font ",28" offset -1,0
set ytics font ",24"
set xtics font ",24"
set key center top font ",24"
set key spacing 3.0

replot

