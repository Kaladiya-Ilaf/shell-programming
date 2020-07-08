#!/bin/bash

pat="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})*$"
echo "Enter email :"
read email

if [[ $email =~ $pat ]]
then
	echo "Yessss!!"
else
	echo "Noooooo!!"
fi
