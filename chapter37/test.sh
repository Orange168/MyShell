#!/bin/bash
seed_random()
{
seed='eval date +%s'
#echo 'seed1=$seed'
let "seed %= 32766"
#echo 'seed2=$seed'
}
seed_random
