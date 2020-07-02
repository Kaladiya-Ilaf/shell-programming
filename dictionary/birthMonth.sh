#!/bin/bash

declare -A birthMonth

countJan=0
countFeb=0
countMar=0
countApr=0
countMay=0
countJun=0
countJul=0
countAug=0
countSep=0
countOct=0
countNov=0
countDec=0

for (( i=0; i<50; i++ ))
do
	randomMonth=$(((RANDOM%12)+1))
	case $randomMonth in
	1)
		arrayJan[$countJan]="person$i"
		countJan=`expr $countJan + 1`
		birthMonth[January]=${arrayJan[@]};;
	2)
		arrayFeb[$countFeb]="person $i"
      countFeb=`expr $countFeb + 1`
      birthMonth["February"]=${arrayFeb[@]};;
	3)
		arrayMar[$countMar]="person $i"
      countMar=`expr $countMar + 1`
      birthMonth["March"]=${arrayMar[@]};;
	4)
		arrayApr[$countApr]="person $i"
      countApr=`expr $countApr + 1`
      birthMonth["April"]=${arrayApr[@]};;
	5)
		arrayMay[$countMay]="person $i"
      countMay=`expr $countMay + 1`
      birthMonth["May"]=${arrayMay[@]};;
	6)
		arrayJun[$countJun]="person $i"
      countJun=`expr $countJun + 1`
      birthMonth["June"]=${arrayJun[@]};;
	7)
		arrayJul[$countJul]="person $i"
      countJul=`expr $countJul + 1`
      birthMonth["July"]=${arrayJul[@]};;
	8)
		arrayAug[$countAug]="person $i"
      countAug=`expr $countAug + 1`
      birthMonth["August"]=${arrayAug[@]};;
	9)
		arraySep[$countSep]="person $i"
      countSep=`expr $countSep + 1`
      birthMonth["September"]=${arraySep[@]};;
	10)
		arrayOct[$countOct]="person $i"
      countOct=`expr $countOct + 1`
      birthMonth["October"]=${arrayOct[@]};;
	11)
		arrayNov[$countNov]="person $i"
      countNov=`expr $countNov + 1`
      birthMonth["November"]=${arrayNov[@]};;
	12)
		arrayDec[$countDec]="person $i"
      countDec=`expr $countDec + 1`
      birthMonth["December"]=${arrayDec[@]};;
	esac
done

read -p "which month data do you need from 1-12 : " userMonth
case $userMonth in
	1)
		echo "January : ${birthMonth["January"]}" ;;
	2)
		echo "February : ${birthMonth["February"]}" ;;
	3)
     echo "March : ${birthMonth["March"]}" ;;
	4)
	  echo "April : ${birthMonth["April"]}" ;;
	5)
     echo "May : ${birthMonth["May"]}" ;;
	6)
     echo "June : ${birthMonth["June"]}" ;;
	7)
     echo "July : ${birthMonth["July"]}" ;;
	8)
     echo "August : ${birthMonth["August"]}" ;;
	9)
     echo "September : ${birthMonth["September"]}" ;;
	10)
     echo "October : ${birthMonth["October"]}" ;;
	11)
     echo "November : ${birthMonth["November"]}" ;;
	12)
     echo "December : ${birthMonth["December"]}" ;;

	*)
	 echo "None";;
esac

echo ${birthDate["jan"]}

