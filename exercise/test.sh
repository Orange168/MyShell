#!/bin/bash
: ${usrname=`pwd`}
echo 'echo==>>'$usrname

#: ${1?"Usage: $0 ARGUMENT"}     # From "usage-message.sh example script.

if [ 0 -eq 1 ]
then  :
else 
echo '-0--=--------------'
fi

var=
DEFAULT_ECHO='Hello World!!'
echo ${var:-$DEFAULT_ECHO}
