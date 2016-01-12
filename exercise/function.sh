#!/bin/bash

var=1

f1(){
var=2
	echo 'f1------'
}

f2(){
	echo 'var='$var
	f1
}

f2
