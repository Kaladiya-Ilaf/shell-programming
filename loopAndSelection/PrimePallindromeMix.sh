#!/bin/bash

function Prime(){
	num=$1
	flag=0
	f=`echo $num 2 | awk '{ printf "%.0f", $1 / $2 }'`

	for (( i=2; i<$f; i++))
	do
   	if [ $(( num % i)) -eq 0 ]
   	then
      	flag=1
   	fi
	done

	if [ $flag -eq 1 ]
	then
   	echo "$num is not a prime number"
	else
   	echo "$num is a prime number"
	fi

}

function Pallindrome(){
	while [ $num -gt 0 ] 
   do
      s=$(( $num % 10 ))
      num=$(( $num / 10 ))
      rev=$( echo ${rev}${s} )
   done
   echo $rev
}

read -p "Enter a number :" num

Prime $num

b=$(Pallindrome $num)
echo "Pallindrome of $num is : $b"

Prime $b
