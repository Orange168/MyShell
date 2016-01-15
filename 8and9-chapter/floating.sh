#!/bin/bash
b=1.5
let "b = $a + 1.3"  # Error.
# t2.sh: let: b = 1.5 + 1.3: syntax error in expression
#                            (error token is ".5 + 1.3")
echo "b = $b"       # b=1
