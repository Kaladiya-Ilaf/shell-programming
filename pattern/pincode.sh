#!/bin/bash -x

pat='^[1-9][0-9]{2}\s{0,1}[0-9]{3}$'

read -p "Enter pin :" pin

if [[ $pin =~ $pat ]]
then
	echo "Yesss!!!"
else
	echo "Nooooo!!!!"
fi
