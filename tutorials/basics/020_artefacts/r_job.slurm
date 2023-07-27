#!/usr/bin/env bash

#SBATCH --account=lp_multiscale_physics
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=1g
#SBATCH --time=00:02:00

# set up the environment by loading the required modules
module purge
module load R/4.1.0-foss-2021a
module load GSL/2.7-GCC-10.3.0

# run the R script
Rscript airy_plot.R