#!/bin/bash
#SBATCH --job-name=myjob
#SBATCH --partition=normal
#SBATCH --cpus-per-task=1
#SBATCH --mem=16GB
#SBATCH --time=20:00
#SBATCH --output=myjob.%j.out
#SBATCH --error=myjob.%j.err

ml purge
ml matlab
export MLM_LICENSE_FILE=27015@srcc-license-srcf.stanford.edu:27015@srcc-license-rcf.stanford.edu
matlab -nodisplay < roi_detection.m
