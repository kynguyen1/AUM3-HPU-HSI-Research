#!/bin/bash
#SBATCH --job-name=gpu_test
#SBATCH --partition=gpus
#SBATCH --gres=gpu:0
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1

#srun apptainer run --bind ./data:/mnt,./:/images shighton_hsi_aum-ung-hsi-research-7-31-2023.sif

  # added "--nv" for running on the gpu
apptainer exec --nv --bind ./data:/mnt,./:/images computeNodes_aum2.sif conda run -n myenv python /workspace/main.py --model threeLayer --dataset AUM2 --training_sample 0.95 --runs 30 --cuda 0 > gpu_threeLayer_30_AUM2_0.95.txt

# apptainer exec --bind ./data:/mnt,./:/images shighton_hsi_aum-ung-hsi-research-7-31-2023.sif pip list 

# apptainer exec  --bind ./data:/mnt,./:/images new_test.sif python /workspace/main.py --model nn --dataset PaviaU --training_sample 0.95 --runs 1

# apptainer exec --nv --bind ./data:/mnt,./:/images new_test.sif python /workspace/main.py --model nn --dataset PaviaC --training_sample 0.8 --runs 1 --cuda 0

# srun apptainer exec --bind ./data:/mnt,./:/images test_computeNode.sif conda list
