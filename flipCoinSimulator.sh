#!/bin/bash -x
echo "Welcome to FlipCoin Simulator"
numOfHeads=0
numOfTails=0
while [[$numOfHeads -ne 50 && $numOfTails -ne 50]]
do
	flipOutput=$((RANDOM%2))
	if [ $flipOutput -eq 0 ]
	then
		numOfHeads=$(( $numOfHeads + 1 ))
		echo "It is Heads"
	else
		numOfTails=$(( $numOfTails + 1 ))
		echo "It is Tails"
	fi
done
if [$numOfHeads -eq 50]
then
	win=$(( $numOfHeads - $numOfTails ))
	echo "Heads won by $win"
else
	win=$(( $numOfTails - $numOfHeads ))
	echo "Tails won by $win"
fi
