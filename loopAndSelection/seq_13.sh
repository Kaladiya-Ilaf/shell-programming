#!/bin/bash
echo "Enter First Number"
read a
echo "Enter Second Number"
read b
echo "Enter Third Number"
read c

op1=`echo $a $b $c | awk '{ printf "%0.2f\n", $1 + $2 * $3 }'`
echo "a+b*c = $op1"

op2=`echo $a $b $c | awk '{ printf "%0.2f\n", $3 + $1 / $2 }'`
echo "c+a/b = $op2"

op3=`echo $a $b $c | awk '{ printf "%0.2f\n", $1 % $2 + $3 }'`
echo "a%b+c = $op3"

op4=`echo $a $b $c | awk '{ printf "%0.2f\n", $1 * $2 + $3 }'`
echo "a*b+c = $op4"

gt1=$(echo "$op1 > $op2" | bc -q )
gt2=$(echo "$op1 > $op3" | bc -q )
gt3=$(echo "$op1 > $op4" | bc -q )
gt4=$(echo "$op2 > $op3" | bc -q )
gt5=$(echo "$op2 > $op4" | bc -q )
gt6=$(echo "$op3 > $op4" | bc -q )


if [ $gt1 = 1 ] && [ $gt2 = 1 ] && [ $gt3 = 1 ]
then
	echo " a+b*c = $op1  is Maximum "
elif [ $gt4 = 1 ] && [ $gt5 = 1 ]
then
	echo " c+a/b =  $op2  is Maximum "
elif [ $gt6 = 1 ]
then
	echo " a%b+c = $op3 is Maximum "
else
	echo " a*b+c = $op4 is Maximum "
fi

if [ $gt1 = 0 ] && [ $gt2 = 0 ] && [ $gt3 = 0 ]
then
   echo " a+b*c = $op1 is Minimum "
elif [ $gt4 = 0 ] && [ $gt5 = 0 ]
then
   echo " c+a/b = $op2 is Minimum "
elif [ $gt6 = 0 ]
then
   echo " a%b+c = $op3 is Minimum "
else
   echo " a*b+c = $op4 is Minimum "
fi

