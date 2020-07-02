#!/bin/bash

arr=(-3  0 1 3 2 4 -2 )
len=${#arr[@]}

for (( i=0; i<len; i++ ))
do
	for (( j=$i+1; j<len; j++ ))
	do
		for(( k=$j+1; k<len; k++ ))
		do
		a=${arr[i]}
		b=${arr[j]}
	   c=${arr[k]}
		sum=$(( a + b + c ))
		if [ $sum -eq 0 ]
		then
			echo ${arr[i]} ${arr[j]} ${arr[k]}
			echo "Sum is 0"
		fi
		done
	done
done

