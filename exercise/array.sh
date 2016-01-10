#!/bin/bash
declare -a A1
init_arrary(){
	A1=(2 3 4 5 6 7 8 9)
}

init_arrary

echo 'A1[0]='${A1[0]}

fore(){
i=0
until [ "$i" -gt 5 ] 
do 
let "i += 1"
echo 'A1['$i']='${A1[i]}
done
return 0
}
fore
echo 'after fore'
i=0
xwhile(){
echo 'while'
while [ "$i" -le 6 ]
do 
let "i += 1"
echo 'i='$i
W='A1[0]='${A1[i]}
printf %-4s $W
done
return 0
}
xwhile


parse_card(){
echo 'parse_card args[1]='$1
}

deal_cards ()
{
echo 'come in deal cards'
cards_picked=0
CARDS_IN_SUIT=1
while [ "$cards_picked" -le 3 ]
do
  fore
  t=$?
  if [ "$t" -ne 2 ]
  then
    parse_card $t
    u=$cards_picked+1
    # Change back to 1-based indexing (temporarily). Why?
    let "u %= $CARDS_IN_SUIT"
    if [ "$u" -eq 0 ]   # Nested if/then condition test.
    then
     echo 'then @@@@@@@@@@'
     echo
    fi                  # Each hand set apart with a blank line.
    let "cards_picked += 1"
  fi  
done  
echo 'end of while'
return 0
}
#deal_cards
