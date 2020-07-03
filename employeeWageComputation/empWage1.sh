#!/bin/bash 

if [ $((RANDOM%2)) -eq 1 ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi
