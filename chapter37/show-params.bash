#!/bin/bash4
# show-params.bash
# Requires version 4+ of Bash.
# Invoke this scripts with at least one positional parameter.
E_BADPARAMS=99
if [ -z "$1" ]
then
  echo "Usage $0 param1 ..."
  exit $E_BADPARAMS
fi
echo ${@:0}
