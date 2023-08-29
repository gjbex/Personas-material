#!/usr/bin/env -S bash -l
#SBATCH --accoun=lp_multiscale_physics
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=1g
#SBATCH --time=00:05:00

# actual computation, a bit boring
for i in $(seq 1 10)
do
    for j in $(seq 1 10)
    do
        echo $(( $i * $j ))
    done
done