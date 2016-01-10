#!/bin/bash4
declare -l var1
var1=MixedCaseVARIABLE
echo "$var1"
echo 'tr: MixedCaseVARIABLE' |tr A-Z a-z

declare -c var2 
var2=originally_lowercase
echo "$var2"
