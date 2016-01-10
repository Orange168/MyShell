#!/bin/bash
fore (){
i=1;
until [ "$i" -gt 50 ]
do	let "i += 1"
done
echo 'i=' $i
}
fore
