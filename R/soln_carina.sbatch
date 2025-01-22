#!/bin/bash
#SBATCH --job-name=myjob
#SBATCH --partition=normal
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=4GB
#SBATCH --time=20:00
#SBATCH --mail-type=ALL
#SBATCH --output=myjob.%j.out
#SBATCH --error=myjob.%j.err

ml purge
ml r/4.1.1

export R_LIBS_USER=~/R/x86_64-pc-linux-gnu-library/4.1
mkdir -p $R_LIBS_USER

Rscript parallel_eigens.R
