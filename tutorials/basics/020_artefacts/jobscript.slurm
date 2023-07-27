#!/usr/bin/env bash
#SBATCH --accoun=lp_multiscale_physics
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=1g
#SBATCH --time=00:05:00

# don't put sleep in your job scripts, it is only added here to ensure
# that the job will run for about 2 minutes, which gives you time to
# monitor it with squeue after submission, see below.
sleep 120

# actual computation, a bit boring
for i in $(seq 1 10)
do
    for j in $(seq 1 10)
    do
        echo $(( $i * $j ))
    done
done