#!/usr/bin/env bash

# This script is used to generate data for illustrating
# parallel computations for atools and worker.  The
# job script to use it with is jobscript_parallel.slurm
#
# The scripts takes two optional command line arguments:
# 1. the maximum value of the parameter i
# 2. the maximum value of the parameter j
# If no arguments are given, the default values are 10 for both.
#
# Output is writting to standard output, so you should
# redirect it to a file.

# Set default values for the parameters
i_max=10
j_max=10

# Check if the user has given command line arguments
if [ $# -gt 0 ]; then
    i_max=$1
fi
if [ $# -gt 1 ]; then
    j_max=$2
fi

# Print the parameter name
echo "i,j,time"

# Generate the data
for i in $(seq 1 $i_max); do
    for j in $(seq 1 $j_max); do
        # Generate a random integer between 10 and 240
        time=$(( ( RANDOM % 230 )  + 10 ))
        echo $i,$j,$time
    done
done
