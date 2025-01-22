#!/bin/bash
#SBATCH --job-name=myjob
#SBATCH --partition=gpu
#SBATCH --cpus-per-task=1
#SBATCH --gpus=1
#SBATCH --mem=16GB
#SBATCH --time=30:00
#SBATCH --mail-type=ALL
#SBATCH --output=myjob.%j.out
#SBATCH --error=myjob.%j.err

ml purge
ml python/3.12
ml cudnn
python -m venv tf
source tf/bin/activate
pip install tensorflow matplotlib

python3 cifar_cnn.py

deactivate
