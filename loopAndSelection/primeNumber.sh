#!/bin/bash 
flag=0
read -p "Enter a number : " n

f=`echo $n 2 | awk '{ printf "%.0f", $1 / $2 }'`

for (( i=2; i<=$f; i++))
do
	if [ $(( n % i)) -eq 0 ]
	then
		flag=1
	fi
done

if [ $n -eq 1 ]
then
	echo "$n is niether prime number nor composite number"
elif [ $flag -eq 1 ]
then
	echo "$n is not a prime number"
else
	echo "$n is a prime number"
fi
