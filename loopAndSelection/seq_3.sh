#!/bin/bash -x

randomDigit1=$(((RANDOM%6)+1));
randomDigit2=$(((RANDOM%6)+1));
randomSum=$(( $randomDigit1 + $randomDigit2 ))
echo $randomSum;

