#!/bin/bash

year=0
isleap="false"

echo -n "Enter year (yyyy) : "
read year


if  [ $((year%100)) -ne 0 ] && [ $((year%400)) -eq 0 ] || [ $((year%4)) -eq 0 ]
then
   echo "$year is leap year"
else
   echo "$year is NOT leap year"
fi
