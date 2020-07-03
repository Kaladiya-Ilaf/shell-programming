#!/bin/bash

if [ $((RANDOM%2)) -eq 1 ]
then
	empRatePerHr=20
	empHrs=8
	salary=$(($empHrs*$empRatePerHr))
else
	salary=0
fi

echo "Employee Daily Wage is" $salary
