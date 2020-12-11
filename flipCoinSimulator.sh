#!/bin/bash -x
echo "Welcome to FlipCoin Simulator"
read -p "Do you want to flip a coin (y/n) : " per

if [ $per == "y" ]
then
	flipResult=$(( RANDOM%2 ))
	if [ $flipResult -eq 0 ]
	then
		echo "Heads"
	else
		echo "Tails"
	fi
fi
