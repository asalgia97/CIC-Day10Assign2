#!/bin/bash -x
echo "Welcome to FlipCoin Simulator"
numOfHeads=0
numOfTails=0
read -p "Do you want to flip a coin (t/f) : " val

while [$val == "t"]
do
	read -p "Do you want to flip a coin again (t/f) : " val
	flipOutput=$((RANDOM%2))
	if[$flipOutput -eq 0]
	then
		numOfHeads=$(( $numOfHeads + 1 ))
		echo "It is Heads"
	else
		numOfTails=$(( $numOfTails + 1 ))
		echo "It is Tails"
	fi
	done
echo "Total Heads:" $numOfHeads
echo "Total Tails:" $numOfTails
