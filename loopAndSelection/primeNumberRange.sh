#!/bin/bash 

read -p "Enter lower bound of the range : " l
read -p "Enter higher bound of the range : " h

echo "Prime numbers between $l and $h are : "
num=0
for (( i=$l; i<=$h; i++ ))
do
	counter=0
	for(( num=i; num>=1; num-- ))
	do
	if [ $(( i % num )) -eq 0 ]
	then
		counter=`expr $counter + 1`
	fi
	done
	if [ $counter -eq 2 ]
	then
		echo $i
	fi
done
