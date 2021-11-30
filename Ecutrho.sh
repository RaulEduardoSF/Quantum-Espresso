#!/bin/bash
PWX=pw.x

echo "Corriendo calculos de Ecutoffs"

for iter in {400..500..10}
do 
   sed "s/Exxx/${iter}/g" Ecutrho.in > scf.rho.in
   $PWX < scf.rho.in > ./out_ecutrho/scf.rho.${iter}.out
   echo $iter >> Ecutrho.txt

   grep "!    total energy"< ./out_ecutrho/scf.rho.${iter}.out | tail -1 >> Energies.txt
done

paste Ecutrho.txt Energies.txt > Erho_E.txt
rm Ecutrho.txt Energies.txt scf.rho.in

gnuplot < Erho_E.p
eog Erho_E.png &


