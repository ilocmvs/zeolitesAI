#!/bin/csh -f
#$ -cwd


source /u/local/Modules/default/init/modules.csh
module load intel/14.cs 
module load intelmpi/5.0.0 

mpirun -np 16 ~/VASP/src/vasp.5.4.4/build/std/vasp
