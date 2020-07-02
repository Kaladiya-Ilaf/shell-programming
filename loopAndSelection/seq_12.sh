#!/bin/bash

echo "Enter a number:"
read n
count=0

while [[ $n != 0 ]]
do
	n=`expr $n / 10`
	(( count++ ))
done

if [ $count -eq 1 ]
then
	echo "Unit"
elif [ $count -eq 2 ]
then
	echo "Tens"
elif [ $count -eq 3 ]
then
	echo "Hundred"
elif [ $count -eq 4 ]
then
	echo "Thousand"
else
	echo "None"
fi
