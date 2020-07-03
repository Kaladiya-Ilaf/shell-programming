#!/bin/bash
declare -A flipCoin

singleCoinCounter=0
doubleCoinCounter=0
tripleCoinCounter=0

while true
do
	echo -e  "Do you like to toss a single coin press 1\n or  double coin press 2\n or triple coin press 3\n or exit" 
	read userInput
	case $userInput in
	 
    1)
       coinOne=$((RANDOM%2))
       headOrTail=$(($coinOne))

       if [ $headOrTail -eq 0 ]
       then
            singleArray[$singleCoinCounter]=0
            singleCoinCounter=$(($singleCoinCounter+1))
            echo "head wins"
       else
            singleArray[$singleCoinCounter]=1
            singleCoinCounter=$(($singleCoinCounter+1))
            echo "Tail wins"
       fi
       ;;
    2)
       coinOne=$((RANDOM%2))
       coinTwo=$((RANDOM%2))
       headOrTail=$(($coinOne+$coinTwo))

       if [ $headOrTail -eq 0 ]
       then
            doubleArray[$doubleCoinCounter]=0
            doubleCoinCounter=$(($doubleCoinCounter+1))
            echo "head wins"
       elif [ $headOrTail -eq 2 ]
       then
            doubleArray[$doubleCoinCounter]=1
            doubleCoinCounter=$(($doubleCoinCounter+1))
            echo "Tail wins"
       else
            echo "Draw"     
       fi
       ;;
    3)
       coinOne=$((RANDOM%2))
       coinTwo=$((RANDOM%2))
       coinThree=$((RANDOM%2))
       headOrTail=$(($coinOne+$coinTwo+$coinThree))

       if [ $headOrTail -eq 0 ] || [ $headOrTail -eq 1 ]
       then

            tripleArray[$tripleCoinCounter]=0
            tripleCoinCounter=$(($tripleCoinCounter+1))
            echo "head wins"
       elif [ $headOrTail -eq 2 ] || [ $headOrTail -eq 3 ]
       then
            tripleArray[$tripleCoinCounter]=1
            tripleCoinCounter=$(($tripleCoinCounter+1))
            echo "Tail wins"
       fi
       ;;
    *)
    break;;
    esac
done

flipCoin["singlet"]=${singleArray[@]}
flipCoin["doublet"]=${doubleArray[@]}
flipCoin["triplet"]=${tripleArray[@]}

for coin in ${flipCoin["singlet"]}
do
    if [ $coin -eq 0 ]
    then
        headWinCount=$(($headWinCount+1))
    else
        tailWinCount=$(($tailWinCount+1))
    fi
done

for coin in ${flipCoin["doublet"]}
do
    if [ $coin -eq 0 ]
    then
        headWinCount=$(($headWinCount+1))
    else
        tailWinCount=$(($tailWinCount+1))
    fi
done

for coin in ${flipCoin["triplet"]}
do
    if [ $coin -eq 0 ] || [ $coin -eq 1 ]
    then
        headWinCount=$(($headWinCount+1))
    else
        tailWinCount=$(($tailWinCount+1))
    fi
done

singleArrayLength=${#singleArray[@]}
headWiningPercentage=$(echo |awk '{print (one/two)*100}' one=$headWinCount two=$singleArrayLength)
echo "in singlet head has $headWiningPercentage% winning chance"

doubleArrayLength=${#doubleArray[@]}
headWiningPercentage=$(echo |awk '{print (one/two)*100}' one=$headWinCount two=$doubleArrayLength)
echo "in doublet head has $headWiningPercentage% winning chance"

tripleArrayLength=${#tripleArray[@]}
headWiningPercentage=$(echo |awk '{print (one/two)*100}' one=$headWinCount two=$tripleArrayLength)
echo "in triplet head has $headWiningPercentage% winning chance"

