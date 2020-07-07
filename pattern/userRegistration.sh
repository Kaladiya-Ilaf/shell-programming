#!/bin/bash 
declare -a pattern
declare -a userInput
pattern[0]="^[A-Z][a-z]{2,}$"
pattern[1]="^[A-Z][a-z]{2,}$"
pattern[2]="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})*$"
pattern[3]="^91\s[0-9]{10}$"
#pattern[4]="^?=.*[a-z])$"

echo "Welcome For Registration!!!"

read -p "First Name: " fname
userInput[0]=$fname

read -p "Last Name: " lname
userInput[1]=$lname

read -p "E-mail: " email
userInput[2]=$email

read -p "Mobile: " mobile
userInput[3]=$mobile

i=0


while [ $i -lt 4 ]
do
	if [[ $userInput[$i] =~ $pattern[$i] ]]
	then
		echo "${userInput[$i]} is VALID"

	else
		echo "${userInput[i]} is VALID"
	fi
	i=`expr $i + 1`
done
