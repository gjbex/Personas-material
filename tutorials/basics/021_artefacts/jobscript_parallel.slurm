#!/usr/bin/env bash
#SBATCH --account=lp_multiscale_physics
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=1g
#SBATCH --time=00:05:00

# make sure the module system starts from a clean slate and load the atools module
module purge
module load atools

# log the start of the work item
alog  --state start

# initialize the variables
source <(aenv --data data.csv)

# actual computation, a bit boring
echo $(( $i * $j ))

# log the end of the work item
alog  --state end  --exit $?