#!/bin/bash

MOVIES=("RRR" "Murari" "DJtillu")

# size of aove array is 3
#indexs are 0,1,2

# list always start with 0 index

echo "First Movie is :${MOVIES[0]}"
echo "First Movie is :${MOVIES[1]}"
echo "First Movie is :${MOVIES[2]}"
echo "First Movie is :${MOVIES[@]}"

