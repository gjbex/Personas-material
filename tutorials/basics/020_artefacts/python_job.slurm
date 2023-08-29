#!/usr/bin/env -S bash -l

#SBATCH --account=lp_multiscale_physics
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=1g
#SBATCH --time=00:02:00

# set up the environment by loading the required modules
module purge
module load SciPy-bundle/2021.05-foss-2021a
module load matplotlib/3.4.2-foss-2021a

# run the Python script
python sin_plot.py