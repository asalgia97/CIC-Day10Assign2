#!/bin/bash -x
echo "Welcome to FlipCoin Simulator"

numOfHeads=0
numOfTails=0

echo "Welcome To Flip Coin Simulator"

while [[ $numOfHeads -ne 21 && $numOfTails -ne 21 ]]
do
	flipResult=$(( RANDOM%2 ))
	if [ $flipResult -eq 0 ]
	then
		echo "Heads"
		numOfHeads=$(( $numOfHeads + 1 ))
	else
		echo "Tails"
		numOfTails=$(( $numOfTails + 1 ))
	fi
done

if [ $numOfHeads -eq 21 ]
then
	winMargin=$(( $numOfHeads - $numOfTails ))
	echo "Heads won by $winMargin over Tails"
else
	winMargin=$(( $numOfTails - $numOfHeads ))
	echo "Tails won by $winMargin over Heads"
fi
