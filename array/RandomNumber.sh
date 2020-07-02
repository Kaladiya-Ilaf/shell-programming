#!/bin/bash


declare -a randomNumbers

for ((i = 0; i < 10; i++))
do
    randomNumbers[i]=$(((RANDOM%900)+100))
done

for (( i=0; i<10; i++ ))
do
   echo "$i : ${randomNumbers[i]}"
done

first=${randomNumbers[0]}
second=${randomNumbers[0]}

for (( i=0; i<10; i++ ))
do
	if [ ${randomNumbers[i]} -lt $first ]
	then
		second=$first
		first=${randomNumbers[i]}
	fi
done

echo "Second smallest element is $second"

third=${randomNumbers[0]}
fourth=${randomNumbers[0]}

for (( i=0; i<10; i++ ))
do
   if [ $third -lt ${randomNumbers[i]} ]
   then
		
      fourth=$third
      third=${randomNumbers[i]}
   fi
done

echo "Second largest element is $fourth"
