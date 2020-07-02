#!/bin/bash 

heads=0
tails=0

while [ $heads != 11 ] && [ $tails != 11 ]
do
	flip=$((RANDOM%2))
	if [ $flip -eq 0 ]
	then
		heads=`expr $heads + 1`
	else
		tails=`expr $tails + 1`
	fi
done

echo "Head :"$heads
echo "Tail :"$tails

if [ $heads -eq 11 ]
then
	echo "Head wins!!!!"
else
	echo "Tail wins!!!!"
fi
