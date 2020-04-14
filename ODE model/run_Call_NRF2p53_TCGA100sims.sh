#!/bin/bash
#SBATCH -p standard
#SBATCH -A janeslab
#SBATCH --time=72:00:00
#SBATCH --output=parforTest1.out
#SBATCH --error=parforTest1.err
#SBATCH --nodes=1                #Number of nodes
#SBATCH --ntasks-per-node=20     #Number of cores per node

# Load Matlab environment
module load matlab

# Run Matlab parallel program program
matlab -nodisplay -nosplash  \
-r "parpool('local',19);Call_NRF2p53_TCGA100sims();exit;"