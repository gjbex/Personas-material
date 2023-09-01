#!/usr/bin/env -S bash -l
#SBATCH --account=lp_multiscale_physics
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=1g
#SBATCH --time=00:02:00

# make sure the module system starts from a clean slate and load the atools module
module purge
module load atools

# log the start of the work item
alog  --state start

# initialize the variables
source <(aenv --data data_failures.csv)

# make this work item take a little longer (i.e., 10 seconds) to complete for demonstration purposes
# don't put sleep in your own job scripts unless you have a really good reason.
sleep $time

# make the script fail on purpose to illustrate what happens if work items fail
if [[ $fail != 0 ]]
then
    # false will always fail, i.e., have non-zero exit status
    false
else
    # actual computation, a bit boring
    echo $(( $i * $j ))
fi

# log the end of the work item
alog  --state end  --exit $?
