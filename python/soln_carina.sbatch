#!/bin/bash
#SBATCH --job-name=myjob
#SBATCH --partition=gpu
#SBATCH --cpus-per-task=1
##SBATCH --gres=gpu:1 #commenting out GPU request for now
#SBATCH --mem=16GB
#SBATCH --time=20:00
#SBATCH --mail-type=ALL
#SBATCH --output=myjob.%j.out
#SBATCH --error=myjob.%j.err

ml purge
ml mamba

mamba init
source ~/.bashrc
mamba create -n tf -y

source activate tf
mamba install tensorflow -y
python3 cifar_cnn.py
source deactivate
