#!/bin/bash
echo ${*:2}          # Echoes second and following positional parameters.
echo ${@:2}          # Same as above.
echo ${*:2:3}  
