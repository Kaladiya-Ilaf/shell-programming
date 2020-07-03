#!/bin/bash

empRatePerHr=20
empCheck=$((RANDOM%3))

case $empCheck in
	1) empHr=4
		echo "Employee is Part time";;
	2) empHr=8
		echo "Emplyee is Full time";;
	*)	empHr=0
		echo "Employee is absent";;
esac

salary=$(($empRatePerHr*$empHr))
echo "Salary is "$salary
