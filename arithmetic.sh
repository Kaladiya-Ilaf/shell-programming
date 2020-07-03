#!/bin/bash

read -p "Enter first value :" a
read -p "Enter second value :" b
read -p "Enter third value :" c

echo "First value : "$a
echo "Second value : "$b
echo "Third value : "$c

compute=$(($a+$b*$c))

echo "Result is "$compute
