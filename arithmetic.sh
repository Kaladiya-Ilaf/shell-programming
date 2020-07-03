#!/bin/bash -x

read -p "Enter first value :" a
read -p "Enter second value :" b
read -p "Enter third value :" c


Result["compute1"]=`echo $a $b $c | awk '{ printf "%.0f", $1 + $2 * $3 }'`
Result["compute2"]=`echo $a $b $c | awk '{ printf "%.0f", $1 * $2 + $3 }'`
Result["compute3"]=`echo $a $b $c | awk '{ printf "%.0f", $3 + $1 / $2 }'`
Result["compute4"]=`echo $a $b $c | awk '{ printf "%.0f", $1 % $2 + $3 }'`


