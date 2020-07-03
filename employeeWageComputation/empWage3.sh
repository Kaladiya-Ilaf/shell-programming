#!/bin/bash
empRatePerHr=20

if [ $((RANDOM%3)) -eq 2 ]
then
	empHrs=8
	echo "Employee is Full time"
elif [ $((RANDOM%3)) -eq 1 ]
then
	empHrs=4
	echo "Employee is Part time"
else
	empHrs=0
	echo "Employee is absent"
fi

salary=$(($empRatePerHr*$empHrs))
echo "Salary is "$salary
