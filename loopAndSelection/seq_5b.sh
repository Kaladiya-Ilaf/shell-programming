#!/bin/bash -x

echo  "Enter length in feet:"
read L

echo  "Enter breath in feet:" 
read B

Area=`echo $L $B | awk '{ printf "%0.2f", $1 * $2 }'`
echo "Area = $Area"

Conv=`echo $Area 10.76 | awk '{ printf "%0.2f", $1 / $2 }'`
echo "Area in meters : $Conv"

