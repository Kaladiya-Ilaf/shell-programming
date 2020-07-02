#!/bin/bash 

Day=$(((RANDOM%7)+1))
echo $Day
if [ $Day -eq 1 ]
then
	echo "SUNDAY"
elif [ $Day -eq 2 ]
then
	echo "MONDAY"
elif [ $Day -eq 3 ]
then
   echo "TUESDAY"
elif [ $Day -eq 4 ]
then
   echo "WEDNESDAY"
elif [ $Day -eq 5 ]
then
   echo "THURSDAY"
elif [ $Day -eq 6 ]
then
   echo "FRIDAY"
else
	echo "SATURDAY"
fi
