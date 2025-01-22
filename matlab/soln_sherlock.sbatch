#!/bin/bash
#SBATCH --job-name=myjob
#SBATCH --partition=dev
#SBATCH --cpus-per-task=1
#SBATCH --mem=8GB
#SBATCH --time=20:00
#SBATCH --mail-type=ALL
#SBATCH --output=myjob.%j.out
#SBATCH --error=myjob.%j.err

ml purge
ml matlab/R2023b

matlab -nodisplay < roi_detection.m
