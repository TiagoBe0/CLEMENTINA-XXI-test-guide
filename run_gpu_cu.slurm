#!/bin/bash
#SBATCH --job-name=cu_anneal
#SBATCH --output=anneal_cu.out
#SBATCH --error=anneal_cu.err
#SBATCH --partition=gpunode
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=24
#SBATCH --gres=gpu:1
#SBATCH --time=00:30:00

module purge

module load lammps/2024-Aug-opencl

cd $SLURM_SUBMIT_DIR

mpirun -np 1 lmp \
  -sf gpu -pk gpu 1 neigh no \
  -in in.fcc_cu_anneal.txt


