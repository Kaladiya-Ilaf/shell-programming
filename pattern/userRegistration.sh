#!/bin/bash
function validateUser(){
	userInput=$1
	pat=$2
	if [[ $userInput =~ $pat ]]
	then
   	echo "Valid!"
	else
   	echo "Invalid!"
	fi
}

Name="^[A-Z][a-z]{2,}$"
echo "Welcome For Registration!!!"

read -p "First Name: " fname
validateUser $fname $Name

read -p "Last Name: " lname
validateUser $lname $Name
