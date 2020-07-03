#!/bin/bash

maxWorkHrs=100
empRatePerHr=20
workDays=20

totalEmpHr=0
totalWorkDays=0

while [ $totalEmpHr -lt $maxWorkHrs ] && [ $totalWorkDays -lt $workDays ]
do
	totalWorkDays=`expr $totalWorkDays + 1`
	empCheck=$((RANDOM%3))
	case $empCheck in
	1) empHrs=8;;
	2) empHrs=4;;
	*) empHrs=0;;
	esac
	totalEmpHr=$(($totalEmpHr+$empHrs))
done

totalSalary=$(($totalEmpHr*$empRatePerHr))
echo "Total salary is "$totalSalary
