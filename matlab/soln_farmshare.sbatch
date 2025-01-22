#!/bin/bash
#SBATCH --job-name=myjob
#SBATCH --cpus-per-task=4
#SBATCH --mem=16GB
#SBATCH --time=20:00
#SBATCH --mail-type=ALL
#SBATCH --output=myjob.%j.out
#SBATCH --error=myjob.%j.err

ml purge
ml matlab/r2024a

matlab -nodisplay < roi_detection.m
