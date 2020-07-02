#!/bin/bash -x

randomDigit=$((RANDOM%10))
echo $randomDigit
if [ $randomDigit -eq 0 ]
then
	echo "Zero"
elif [ $randomDigit -eq 1 ]
then
	echo "One"
elif [ $randomDigit -eq 2 ]
then
	echo "Two"
elif [ $randomDigit -eq 3 ]
then
   echo "Three"
elif [ $randomDigit -eq 4 ]
then
   echo "Four"
elif [ $randomDigit -eq 5 ]
then
   echo "Five"
elif [ $randomDigit -eq 6 ]
then
   echo "Six"
elif [ $randomDigit -eq 7 ]
then
   echo "Seven"
elif [ $randomDigit -eq 8 ]
then
   echo "Eight"
else
	echo "Nine"
fi
