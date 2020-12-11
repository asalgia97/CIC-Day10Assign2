#!/bin/bash -x
echo "Welcome to FlipCoin Simulator"

numOfHeads=0
numOfTails=0

echo "Well To Flip Coin Simulator"

read -p "Do you want to flip a coin (y/n) : " per

while [ $per == "y" ]
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
	read -p "Do you want to flip a coin again (y/n) : " per
done

echo "Total number of Heads : " $noOfHeads
echo "Total number of Tails : " $noOfTails
