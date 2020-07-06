#!/bin/bash

read -p " enter a word :" word
if [[ $word == +(some|any)thing ]]
then
	echo "yess"
else
	echo "nooo"
fi
