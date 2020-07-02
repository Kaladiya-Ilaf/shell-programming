#!/bin/bash 

gambler=100
gamble=1
win=0
bet=0

echo "Initially gambler has" $gambler
echo "No. of bets initially :"$bet
echo "No. of wins initially :"$win

while [ $gambler -gt 0 ] && [ $gambler -lt 200 ]
do
	game=$((RANDOM%2))
	if [ $game -eq 1 ]
	then
		win=`expr $win + 1`
		gambler=`expr $gambler + 1`
	else
		gambler=`expr $gambler - 1`
	fi
	bet=`expr $bet + 1`
done

echo "Finally gambler has "$gambler
echo "No. of bets finally :"$bet
echo "No. of wins finally :"$win
