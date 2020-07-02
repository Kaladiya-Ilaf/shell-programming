#!/bin/bash 
echo "Enter day :"
read day
echo "Enter month"
read month

if [ $day -gt 20 ] && [ $day -le 31 ] && [ $month -eq 3 ]
then
	echo "True"
elif [ $month -eq 4 ] || [ $month -eq 5 ]
then
	echo "true"
elif [ $day -gt 0 ] && [ $day -le 20 ] && [ $month -eq 6 ]
then
	echo "true"
else
	echo "false"
fi

