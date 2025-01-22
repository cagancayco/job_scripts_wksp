#!/bin/bash
#SBATCH --job-name=myjob
#SBATCH --partition=batch
#SBATCH --account=#Change this for your group
#SBATCH --cpus-per-task=1
#SBATCH --gpus=1
#SBATCH --mem=16GB
#SBATCH --time=10:00
#SBATCH --mail-type=ALL
#SBATCH --output=myjob.%j.out
#SBATCH --error=myjob.%j.err

ml purge
ml tensorflow/2.15.0
ml cuda/12.3.2_545.23.08_cudNN_9.0.0.312

python3 cifar_cnn.py
