#!/bin/bash

function getWorkHrs(){
   case $1 in
   1) empHrs=8;;
   2) empHrs=4;;
   *) empHrs=0
   esac
   echo $empHrs
}

maxHrs=100
empRatePerHr=20
workDays=20

totalEmpHr=0
totalWorkDays=0

while [ $totalWorkDays -lt $workDays ] && [ $totalEmpHr -lt $maxHrs ]
do
   totalWorkDays=`expr $totalWorkDays + 1`
   workHours="$( getWorkHrs $((RANDOM%3)) )"
   totalEmpHr=$(($totalEmpHr+$workHours))
	dailyWage[$totalWorkDays]=$(($workHours * $empRatePerHr))
done

totalSalary=$(($totalEmpHr*$empRatePerHr))
echo ${dailyWage[@]}
