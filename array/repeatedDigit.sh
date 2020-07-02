#!/bin/bash 

declare -a num
i=0
x=1
while [ $x -le 100 ]
do
	if [ $(( x % 11)) -eq 0 ]
	then
		num[i]=$x
		i=`expr $i + 1`
	fi
	x=`expr $x + 1`
done

echo "List :"
for (( k=0; k<=10; k++ ))
do
	echo ${num[k]}
done


