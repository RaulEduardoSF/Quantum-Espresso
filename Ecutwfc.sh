#!/bin/bash
PWX=pw.x

echo "Corriendo calculos de Ecutoffs"

for iter in {80..300..20}
do 
   sed "s/Exxx/${iter}/g" Ecutwfc.in > scf.wfc.in
   $PWX < scf.wfc.in > ./out_ecutwfc/scf.wfc.${iter}.out
   echo $iter >> Ecutwfc.txt

   grep "!    total energy              ="< ./out_ecutwfc/scf.wfc.${iter}.out | tail -1 >> Energies.txt
done

paste Ecutwfc.txt Energies.txt > Ewfc_E.txt
rm Ecutwfc.txt Energies.txt

gnuplot < Ewfc_E.p
eog Ewfc_E.png &


