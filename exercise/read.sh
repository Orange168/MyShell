#!/bin/bash
#1. function stdin 
#read -s -t 10 -p "Enter your name: " arg1 arg2 #-t limit 10s input -s hide input word 
#echo "you enter name="$arg1 "arg2="$arg2

recycleRead(){
cat case.sh.bak | while read line
do
	echo '==>>'$line
done
}

while read -u3 l1 && read -u4 l2;do
echo $l1  $l2
done 3<$1 4<$2 #-u3 mean read from 3 fd(file description)
