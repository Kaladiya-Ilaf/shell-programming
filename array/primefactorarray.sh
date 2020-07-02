#!/bin/bash 

read -p "Enter a number : " n
declare -a primeFactors

i=1
x=0

while [ $i -le $n ]
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
			primeFactors[x]=$i
			x=`expr $x + 1`
      fi
	fi
	i=`expr $i + 1`
done

y=0
len=${#primeFactors[@]}
echo "Prime Factors are :"
while [ $y -le $len ]
do
	echo ${primeFactors[y]}
	y=`expr $y + 1`
done

