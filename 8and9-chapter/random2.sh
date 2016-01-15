#!/bin/bash
# random2.sh: Returns a pseudorandom number in the range 0 - 1.
# Uses the awk rand() function.
AWKSCRIPT=' { srand(); print rand() } '
#            Command(s) / parameters passed to awk
# Note that srand() reseeds awk's random number generator.
echo -n "Random number between 0 and 1 = "
 awk "$AWKSCRIPT"
# What happens if you leave out the 'echo'?

a=10
b=3
echo "a/b= $((a/b))"
