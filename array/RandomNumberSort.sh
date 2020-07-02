#!/bin/bash 
declare -a randomNumbers
i=0
for ((i = 0; i < 10; i++))
do
    randomNumbers[i]=$(((RANDOM%900)+100))
done
for (( i=0; i<10; i++ ))
do
   echo "$i : ${randomNumbers[i]}"
done

for (( i=0; i<10; i++ ))
do
	
	for(( j=`expr $i + 1`; j<10; j++ ))
	do
		if [ ${randomNumbers[i]} -gt ${randomNumbers[j]} ]
		then
			temp=${randomNumbers[i]}
			randomNumbers[i]=${randomNumbers[j]}
			randomNumbers[j]=$temp
		fi
	done
done

echo "Sorted Array : ${randomNumbers[*]}"
echo "Second Largest Value : ${randomNumbers[8]}"
echo "Second Smallest Value : ${randomNumbers[1]}"
