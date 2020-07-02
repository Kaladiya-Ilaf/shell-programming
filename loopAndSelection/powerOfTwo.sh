#!/bin/bash -x

n=$1
power=1
echo "User Input : $n"
echo "Powers of 2"
for (( counter=0; counter<=$n; counter++ ))
do
	echo "$counter power of 2 : $power"
	power=$(( 2 * $power ))
done
