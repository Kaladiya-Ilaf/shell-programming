#!/bin/bash 
head=0
tail=0

while [ $head != 21 ] && [ $tail != 21 ]
do
	flip=$((RANDOM%2))
	if [ $flip -eq 1 ]
	then
		head=`expr $head + 1`
	else
		tail=`expr $tail + 1`
	fi
	
done

echo "Head :"$head
echo "Tail :"$tail

if [ $head -eq $tail ]
then
	echo "It is a tie"
	while [ $(($head-$tail)) -ge 2 ]
	do
		flip=$((RANDOM%2))
   	if [ $flip -eq 1 ]
   	then
      	head=`expr $head + 1`
   	else
      	tail=`expr $tail + 1`
   	fi
	done
fi

echo "Head :"$head
echo "Tail :"$tail

if [ $head -gt $tail ]
then
	wins=$(($head-$tail))
	echo "Head wins by "$wins
else
	wins=$(($tail-$head))
	echo "Tail wins by "$wins
fi
