#!/bin/bash
#SBATCH --account=pad_(modificar con pad del grupo)
#SBATCH --nodes=1
#SBATCH --tasks-per-node=24
#SBATCH --gpus=1
#SBATCH --output=output_%j.txt
#SBATCH --error=error_%j.txt

cd $SLURM_SUBMIT_DIR

module purge
module load lammps/2024-Aug-opencl

export OMP_NUM_THREADS=1

mpirun -np 24 /data/shared/apps/lammps/2024-ocl-most/build/lmp \
  -sf gpu -pk gpu 1 neigh no \
  -in in.fcc_cu_anneal.txt
