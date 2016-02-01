#!/bin/bash
trip_leading_zero2() # Strip possible leading zero(s), since otherwise
{                      # Bash will interpret such numbers as octal values.
  shopt -s extglob     # Turn on extended globbing.
  echo 'arg1='$1
  local val=${1##+(0)} # Use local variable, longest matching series of 0's.
  shopt -u extglob     # Turn off extended globbing.
  _strip_leading_zero2=${val:-0}
                       # If input was 0, return 0 instead of "".
}

trip_leading_zero2

echo 'return'$?
