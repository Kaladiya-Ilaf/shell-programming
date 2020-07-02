#!/bin/bash
echo "Think a number in the range 1-100 : "
LowerNumber=0
HigherNumber=100

while true
do
    midNum=`echo $LowerNumber  $HigherNumber  2 | awk '{ printf "%.f", ($1 + $2) / $3 }'`
    echo "whether your thinking value is $midNum"
    read -p "press 1 for yes ,0 for no : " Response
    if [ $Response -eq 1 ]
        then
            echo "Found it!!!"
            break;
    else
        echo "Whether the guessed value is lesser than $midNum"
        read -p "press 1 if it is greater press 2 : " secondResponce
        if [ $secondResponce -eq 1 ]
        then
				LowerNumber=$LowerNumber
				HigherNumber=$midNum
        else
            LowerNumber=$midNum
				HigherNumber=$HigherNumber
        fi
    fi
    echo "Lower Limit : $LowerNumber"
	 echo "Higher Limit : $HigherNumber"
done 
