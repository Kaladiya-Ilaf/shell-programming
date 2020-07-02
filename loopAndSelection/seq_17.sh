#!/bin/bash 

echo "Enter a value : " 
read value
echo -e " Enter 1 for Feet to Inch\n Enter 2 for Inch to Feet\n Enter 3 for Feet to Meter\n Enter 4 for Meter to Feet :" 
read opt

case $opt in
	1) echo "Feet to Inch"
		calc=`echo $value 12 | awk '{ printf "%0.2f", $1 * $2 }'`
		echo "$value : $calc";;
	2) echo "Inch to Feet"
		calc=`echo $value 12 | awk '{ printf "%0.2f", $1 / $2 }'`
		echo "$value : $calc";;
	3) echo "Feet to Meter"
		calc=`echo $value 3.28 | awk '{ printf "%0.2f", $1 / $2 }'`
		echo "$value : $calc";;
	4) echo "Meter to Feet"
		calc=`echo $value 3.28 | awk '{ printf "%0.2f", $1 * $2 }'`
		echo "$value : $calc";;
	*) echo "None";;
esac


