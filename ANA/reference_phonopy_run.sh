#!/bin/bash
beg=1
end=156


for i in $(seq -f "%03g" $beg $end); do
	echo "$i" 
	mv "POSCAR-$i" POSCAR # renaming to POSCAR
	csh mpirun.sh
        mv vasprun.xml "vasprun.xml-$i"
        mv POSCAR "POSCAR-$i"
done
