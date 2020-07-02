#!/bin/bash

n=$1
echo "User Input : $n"
power=1
counter=0
echo "Table of power of 2 :"
while [[ $counter -le $n ]]
do
	echo "$counter power of 2 : $power"
   power=$(( 2 * $power ))
	counter=`expr $counter + 1`
done

