
set output "puseries.svg"
set terminal svg

plot "mod-open.pudat" using 1:($2/1000) every ::1 title "Modified Open" with linespoints linecolor rgb "#1B9E77", \
     "closed.pudat" using 1:($2/1000) every ::1 title "Closed" with linespoints linecolor rgb "#D95F02"

set output "puseries.eps"
set terminal postscript eps

set auto x
set ytics font ",24"
set xtics font ",24"
set xlabel "Time (month)" font ",28"
set ylabel "Pu239 (metric tonnes)" font ",28" offset -1,0
set key center top font ",24"
set key spacing 3.0

replot

