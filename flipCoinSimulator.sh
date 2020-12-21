#!/bin/bash -x
echo "Welcome to FlipCoin Simulator"
read -p "Do you want to flip a coin (t/f) : " val
if [$val == "t"]
then
	flipOutput=$((RANDOM%2))
	if[$flipOutput -eq 0]
	then
		echo "It is Heads"
	else
		echo "It is Tails"
	fi
fi
