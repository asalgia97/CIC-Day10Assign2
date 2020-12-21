#!/bin/bash -x
echo "Welcome to FlipCoin Simulator"
numOfHeads=0
numOfTails=0
margin=0
function Counter()
{
	if [ $1 -eq 0 ]
		then
			numOfHeads=$(($numOfHeads + 1))
		else
			numOfTails=$(($numOfTails + 1))
		fi
}
function checkWinner()
{
	if [$1 -gt $2]
	then
		win=$(( $1 - $2 ))
	else
		win=$(( $2 - $1 ))
	fi
}
	while [[$numOfHeads -ne 50 && $numOfTails -ne 50]]
	do
		flipOutput=$((RANDOM%2))
		Counter $flipOutput
	done

winner=$( checkWinner $numOfHeads $numOfTails )
if [ $winner -eq 0 ]
then
	while [ $winner -le 2 ]
	do
		flipOutput=$((RANDOM % 2))
		Counter $flipOutput
		winner=$( checkWinner $numOfHeads $numOfTails )
	done
fi
if [ $numOfHeads -gt $numOfTails ]
then
	echo "Head Won  $winner"
else
	echo "Tail Won $winner"
fi
