#!/bin/sh
#SBATCH -A <allocation>
#SBATCH -p <partition>
#SBATCH -t <time>
#SBATCH -N <number of nodes>
#SBATCH --gres=gpu:<#>
#SBATCH -o <out filename>.txt
#SBATCH -e <error filename>.txt

module purge
module load gcc/13.1.0
module load cuda/11.8
module load python/miniconda23.5.2

source <path to conda>
conda activate <your conda env name that you set up already>
export PATH=<path to conda env>

cd <your dir location to clean-contact>/CLEAN-Contact
echo "about to run 'python run_cc.py' from run_cc.sbatch"
python run_cc.py
echo "end of run_cc.sbatch"
