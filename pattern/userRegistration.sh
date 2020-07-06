#!/bin/bash 

function validateUser(){
	echo $1
	echo $2
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
emailId="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})*$"
mobileFormat="^91[0-9]{10}$"

echo "Welcome For Registration!!!"

read -p "First Name: " fname
validateUser $fname $Name

read -p "Last Name: " lname
validateUser $lname $Name

read -p "E-mail: " email
validateUser $email $emailId

read -p "Mobile: " mobile
validateUser $mobile $mobileFormat
