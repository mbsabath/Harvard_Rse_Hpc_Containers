#! /bin/bash
#SBATCH --job-name=mpi_example
#SBATCH --output=mpi_example.out
#SBATCH --error=mpi_example.err
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=4
#SBATCH --time=00:05:00
#SBATCH --mem=1000
#SBATCH --partition=shared
#SBATCH -c 1

module load gcc/13.2.0-fasrc01 openmpi/4.1.5-fasrc03

srun -n $SLURM_NTASKS --mpi=pmix singularity run mpi_example.sif
