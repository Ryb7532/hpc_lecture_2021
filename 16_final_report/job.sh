#!/bin/sh
#$ -cwd
#$ -l f_node=2
#$ -l h_rt=00:10:00
#$ -N node_2

. /etc/profile.d/modules.sh
module load gcc/8.3.0 cuda openmpi

#mpirun -n 2 -npernode 1 --bind-to none ./a.out
mpirun -n 2 -npernode 1 --bind-to none -x OMP_NUM_THREADS=56 ./a.out
