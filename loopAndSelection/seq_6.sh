#!/bin/bash 

digitOne=$(((RANDOM%900)+100));
digitTwo=$(((RANDOM%900)+100));
digitThree=$(((RANDOM%900)+100));
digitFour=$(((RANDOM%900)+100));
digitFive=$(((RANDOM%900)+100));
echo $digitOne
echo $digitTwo
echo $digitThree
echo $digitFour
echo $digitFive

if [ $digitOne -gt $digitTwo ] && [ $digitOne -gt $digitThree ] && [ $digitOne -gt $digitFour ] && [ $digitOne -gt $digitFive ]
then
	echo "$digitOne is maximum"
elif [ $digitTwo -gt $digitThree ] && [ $digitTwo -gt $digitFour ] && [ $digitTwo -gt $digitFive ]
then
	echo "$digitTwo is maximum"
elif [ $digitThree -gt $digitFour ] && [ $digitThree -gt $digitFive ]
then
	echo "$digitThree is maximum"
elif [ $digitFour -gt $digitFive ]
then
	echo "$digitFour is maximum"
else
	echo "$digitFive is maximum"
fi

if [ $digitOne -lt $digitTwo ] && [ $digitOne -lt $digitThree ] && [ $digitOne -lt $digitFour ] && [ $digitOne -lt $digitFive ]
then
   echo "$digitOne is minimum"
elif [ $digitTwo -lt $digitThree ] && [ $digitTwo -lt $digitFour ] && [ $digitTwo -lt $digitFive ]
then
   echo "$digitTwo is minimum"
elif [ $digitThree -lt $digitFour ] && [ $digitThree -lt $digitFive ]
then
   echo "$digitThree is minimum"
elif [ $digitFour -lt $digitFive ]
then
   echo "$digitFour is minimum"
else
   echo "$digitFive is minimum"
fi

