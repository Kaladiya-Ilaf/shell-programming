#!/bin/bash

declare -A diceRoll
declare -a diceArray
count_1=0
count_2=0
count_3=0
count_4=0
count_5=0
count_6=0

while [ $count_1 != 10 ] && [ $count_2 != 10 ] && [ $count_3 != 10 ] && [ $count_4 != 10 ] && [ $count_5 != 10 ] && [ $count_6 != 10 ]
do
	roll=$(((RANDOM%6)+1))
	case $roll in
	1)
		count_1=`expr $count_1 + 1`
		diceRoll[roll1]=$count_1;;
	2)
		count_2=`expr $count_2 + 1`
      diceRoll[roll2]=$count_2;;
	3)
		count_3=`expr $count_3 + 1`
      diceRoll[roll3]=$count_3;;
	4)
		count_4=`expr $count_4 + 1`
      diceRoll[roll4]=$count_4;;
	5)
		count_5=`expr $count_5 + 1`
      diceRoll[roll5]=$count_5;;
	6)
		count_6=`expr $count_6 + 1`
      diceRoll[roll6]=$count_6;;
	esac
done

for key in ${!diceRoll[@]}
do
	echo "$key : ${diceRoll[$key]}"
done

max=${diceRoll[roll1]}
min=${diceRoll[roll1]}

maxkey=roll1
minkey=roll1


for i in ${!diceRoll[@]}
do
	 if [ ${diceRoll[$i]} -gt $max ]
    then
    max=${diceRoll[$i]}
    maxkey=$i
    fi
done

echo "Max :"$max
echo "Key :"$maxkey

for j in ${!diceRoll[@]}
do
    if [ ${diceRoll[$j]} -lt $min ]
    then
    min=${diceRoll[$j]}
    minkey=$j
    fi

done
echo "Min :"$min
echo "key :"$minkey
