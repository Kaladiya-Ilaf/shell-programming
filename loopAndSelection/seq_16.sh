#!/bin/bash

echo "Enter a number:"
read n
count=0

while [[ $n != 0 ]]
do
   n=`expr $n / 10`
   (( count++ ))
done

case $count in 
    1)
    echo "Unit";;
    2)
    echo "Tens";;
    3)
    echo "Hundred";;
    4)
    echo "Thousand";;
    *)
    echo "None";;
esac
