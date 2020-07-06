#!/bin/bash
Name="^[A-Z][a-z]{2,}$"

echo "Welcome For Registration!!!"

read -p "First Name: " fname

if [[ $fname =~ $Name ]]
then
	echo "VALID!"
else
	echo "INVALID!"
fi
