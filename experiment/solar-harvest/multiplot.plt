set terminal png size 800, 600
set output "solar.png"

set tmargin 0
set bmargin 0
set lmargin 5
set rmargin 5
unset xtics

set multiplot layout 4,1 title "Semi-indoor solar energy harvesting experiment\nPanel: 53x30mm, 5V, 30mA\n"

set key autotitle column nobox samplen 1 noenhanced
unset title

set xdata time
set style data lines
set xlabel ""

set autoscale y

set timefmt "%Y-%m-%d %H:%M:%S"
# set xrange ["2016-11-14 00:00:00":"2016-11-14 23:59:59"]

set xtics nomirror scale 0.01,0.01
set xtics format " " 
set mxtics 2

set style line 12 lc rgb '#808080' lt 0 lw 1
set grid xtics mxtics ytics back ls 12

set ytics nomirror 1,1,5

plot "readings.dat" using 1:3 smooth bezier t "Voltage (V)" w lines linestyle 2

set ytics nomirror 0.1,0.2,0.8

plot "readings.dat" using 1:4 smooth bezier t "Current (mA)" w lines linestyle 3

set format x "%b %d"
set xtics nomirror scale 1,1
set ytics nomirror 1,1,5

plot "readings.dat" using 1:($3*$4) smooth bezier t "Power (mW)" w lines linestyle 4