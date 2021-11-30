set terminal pngcairo size 680,480
set output "Erho_E.png"

set yzeroaxis
unset key
set grid

set xlabel "Ecutrho, Ry"
set ylabel "Etotal, Ry"
set title "Ecutrho"
set tics font "serif,12"
set xtics font "serif,12"
set ytics font "serif,12"


set format y "%.6f"


plot  [400:500] "Erho_E.txt" u 1:6 w lp ps 1 pt 5