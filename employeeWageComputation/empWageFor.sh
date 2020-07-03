#!/bin/bash

empRatePerHr=20
workingDays=20
totalSalary=0

for (( day=1; day<=$workingDays; day++ ))
do
	empCheck=$((RANDOM%3))
	case $empCheck in
		1) empHrs=8;;
		2) empHrs=4;;
		*) empHrs=0;;
	esac
	salary=$(($empHrs*$empRatePerHr))
	totalSalary=$(($totalSalary+$salary))
done

echo "Total salary for 20 of an employee is "$totalSalary
