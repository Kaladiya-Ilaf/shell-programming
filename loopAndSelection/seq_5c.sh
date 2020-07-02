#!/bin/bash 

echo  "Enter length in feet:"
read L

echo  "Enter breath in feet:" 
read B

Area=`echo $L $B | awk '{ printf "%0.2f", $1 * $2 }'`
echo "Area in sq ft = $Area"

Conv1=`echo $Area 10.76 | awk '{ printf "%0.2f", $1 / $2 }'`
echo "Area in sq meters : $Conv1"

plots=`echo $Conv1 25 | awk '{ printf "%f", $1 * $2 }'`
echo "Area of 25 plots in sq meters : $plots"

Conv2=`echo $plots 4046.86  | awk '{ printf "%f", $1 / $2 }'`
echo "Area of 25 plots in acres : $Conv2"
