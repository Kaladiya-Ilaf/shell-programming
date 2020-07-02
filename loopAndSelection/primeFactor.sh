#!/bin/bash
read -p "Enter a number : " n

echo "All Prime Factors of $n are : "

for (( i=1; i<=$n; i++ ))
do
	k=0
	if [ $(( n % i )) -eq 0 ]
	then
		for (( j=1; j<=$i; j++ ))
		do
		if [ $(( i % j )) -eq 0 ]
		then
			k=`expr $k + 1`
		fi
		done
		if [ $k -eq 2 ]
		then
			echo "$i is a prime factor"
		fi
	fi
done
