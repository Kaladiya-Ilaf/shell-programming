#!/bin/bash

function FtoC(){
	if [ $1 -ge 32 ] && [ $1 -le 212 ]
	then
		b=$(echo |awk '{print (one-32)*(5/9)}' one=$1)
		echo "$1 F = $b C"
	else
		echo "Input must be between Freezing point(32) and boiling point(212)"
	fi
}

function CtoF(){
	if [ $1 -ge 0 ] && [ $1 -le 100 ]
   then
		a=$(echo |awk '{print (9/5)}')
      b=$(echo |awk '{print (one*two)+32}' one=$1 two=$a)
      echo "$1 C = $b F"
   else
      echo "Input must be between Freezing point(0) and boiling point(100)"
   fi
}

read -p "Enter temperature : " x

echo -e "Enter 1 for fahrenheit to celsius conversion\nEnter 2 for celsius to fahrenheit conversion"
read opt

case $opt in
	1) FtoC $x;;
	2) CtoF $x ;;
	*) echo "Wrong option"
esac
