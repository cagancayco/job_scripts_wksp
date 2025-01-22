#!/bin/bash
#SBATCH --job-name=myjob
#SBATCH --partition=batch
#SBATCH --account=#Change this for your account
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=4GB
#SBATCH --time=10:00
#SBATCH --mail-type=ALL
#SBATCH --output=myjob.%j.out
#SBATCH --error=myjob.%j.err

ml purge
ml R/4.3.3

Rscript parallel_eigens.R
