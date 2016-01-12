#!/bin/bash
: ${usrname=`pwd`}
echo 'echo==>>'$usrname

#: ${1?"Usage: $0 ARGUMENT"}     # From "usage-message.sh example script.

if [ 0 -eq 1 ]
then  :
else 
echo '-0--=-----------\$@'$@
fi

a=letter_of_alphabet
letter_of_alphabet=z
echo "a = $a"           # Direct reference.
echo "Now a = ${!a}"    # Indirect reference.

var=
DEFAULT_ECHO='Hello World!!'
echo ${var:-$DEFAULT_ECHO}
: ${ZZXy23AB?}
