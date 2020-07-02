#!/bin/bash 

n=$1
echo "User Input : $n"
sum=0

for (( i=1; i<=n; i++ ))
do
	a=$(echo |awk '{print one/two}' one=1 two=$i)
	sum=$(echo |awk '{print three+four}' three=$sum four=$a)

done 

echo "$sum"
