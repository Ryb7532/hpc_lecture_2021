#!/bin/sh
#$ -cwd
#$ -l f_node=8
#$ -l h_rt=00:10:00
#$ -N node_8

. /etc/profile.d/modules.sh
module load gcc/8.3.0 cuda openmpi

#mpirun -n 8 -npernode 1 --bind-to none ./a.out
mpirun -n 8 -npernode 1 --bind-to none -x OMP_NUM_THREADS=56 ./a.out
