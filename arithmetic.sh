#!/bin/bash -x

read -p "Enter first value :" a
read -p "Enter second value :" b
read -p "Enter third value :" c


Result["compute1"]=`echo $a $b $c | awk '{ printf "%.0f", $1 + $2 * $3 }'`
Result["compute2"]=`echo $a $b $c | awk '{ printf "%.0f", $1 * $2 + $3 }'`
Result["compute3"]=`echo $a $b $c | awk '{ printf "%.0f", $3 + $1 / $2 }'`
Result["compute4"]=`echo $a $b $c | awk '{ printf "%.0f", $1 % $2 + $3 }'`

lenResult=${#Result[@]}
j=1
for (( i=0; i<$lenResult; i++ ))
do
	resultArray[$i]=${Result[compute$j]}
	j=`expr $j + 1`
done
echo "Array of result is :"
echo ${resultArray[@]}


for (( a=0; a<10; a++ ))
do
   
   for(( b=`expr $a + 1`; b<10; b++ ))
   do
      if [[ ${resultArray[a]} -lt ${resultArray[b]} ]]
      then
         temp=${resultArray[a]}
         resultArray[a]=${resultArray[b]}
         resultArray[b]=$temp
      fi
   done
done
echo "Sorted in descending order :"
echo ${resultArray[@]}

j=1
for (( a=0; a<10; a++ ))
do
   
   for(( b=`expr $a + 1`; b<10; b++ ))
   do
      if [[ ${resultArray[a]} -gt ${resultArray[b]} ]]
      then
         temp=${resultArray[a]}
         resultArray[a]=${resultArray[b]}
         resultArray[b]=$temp
      fi
   done
done
echo "Sorted in ascending order :"
echo ${resultArray[@]}


