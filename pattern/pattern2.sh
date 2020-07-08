#!/bin/bash
pat='^([0-9]*[a-zA-Z]){3,}[0-9]*$'

read -p "Enter : " any

if [[ $any =~ $pat ]]
then
	echo "Yes!!"
else
	echo "No!!"
fi
