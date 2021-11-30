set terminal pngcairo size 680,480
set output "Ewfc_E.png"

set yzeroaxis
unset key
set grid

set xlabel "Ecutwfc, Ry"
set ylabel "Etotal, Ry"
set title "Ecutwfc"
set tics font "serif,12"
set xtics font "serif,12"
set ytics font "serif,12"


set format y "%.6f"


plot  [80:300] "Ewfc_E.txt" u 1:6 w lp ps 1 pt 5
