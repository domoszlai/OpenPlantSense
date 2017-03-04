set terminal png size 800, 300
set output "daily.png"

set title "Semi-indoor solar energy harvesting experiment\nPanel: 53x30mm, 5V, 30mA\nTotal daily energy harvesting (mA at 5V)"
set key left

set timefmt "%Y-%m-%d"
set format x "%b %d"
set grid

set xdata time
#set xtics rotate by -45
#set xrange ["2010-03-01":"2011-06-01"]

plot "daily.dat" using 1:3 title "Cumulative" with filledcurves y1=0 lt rgb "#cc3333", \
     "daily.dat" using 1:2 title "Daily" with filledcurves y1=0 lt rgb "#669933"