#!/bin/bash 

function Pallindrome(){
	num=$1
	while [ $num -gt 0 ] 
	do
   	s=$(( $num % 10 ))
   	num=$(( $num / 10 ))
    	rev=$( echo ${rev}${s} )
	done
	echo $rev
}

read -p "Enter a number :" num

temp=$num

y=$( Pallindrome $num )
echo $y
if [ $temp -eq $y ]
then
	echo "Number is palindrome"
else
	echo "Number is NOT palindrome"
fi


