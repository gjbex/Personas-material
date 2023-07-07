#!/usr/bin/env bash

for i in $(seq 1 10)
do
    for j in $(seq 1 10)
    do
        echo $(( $i * $j ))
    done
done
