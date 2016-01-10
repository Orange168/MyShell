#!/bin/bash
seed_random ()  # Seed random number generator.
{               # What happens if you don't do this?
seed=`eval date +%s`
let "seed %= 32766"
RANDOM=$seed
echo 'random='$RANDOM
#  What are some other methods
#+ of seeding the random number generator?
}

seed_random
