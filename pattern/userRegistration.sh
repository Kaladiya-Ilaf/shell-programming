#!/bin/bash 
declare -a pattern
declare -a userInput
pattern[0]="^[A-Z][a-z]{2,}$"
pattern[1]="^[A-Z][a-z]{2,}$"
pattern[2]="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})*$"
pattern[3]="^91\s[1-9]{10}$"
#pattern[4]="^?=.*[a-z])$"

echo "Welcome For Registration!!!"

read -p "First Name: " userInput[0]

read -p "Last Name: " userInput[1]

read -p "E-mail: " userInput[2]

read -p "Mobile: " userInput[3]


j=0
i=0


while [ $i -lt 4 ] && [ $j -lt 4 ]
do
if [[ ${userInput[$i]} =~ ${pattern[$j]} ]]
then
	echo "${userInput[$i]} is VALID"
	i=`expr $i + 1`
	j=`expr $j + 1`
else
   echo "${userInput[$i]} is INVALID"
   i=`expr $i + 1`
   j=`expr $j + 1`
fi
done


