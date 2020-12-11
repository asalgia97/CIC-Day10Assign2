#!/bin/bash -x
echo "Welcome to FlipCoin Simulator"

numOfHeads=0
numOfTails=0
margin=0

function resultCounter ()
{
	if [ $1 -eq 0 ]
		then
			numOfHeads=$(( $numOfHeads + 1 ))
		else
			numOfTails=$(( $numOfTails + 1 ))
		fi
}

function marginCheck ()
{
	if [ $1 -gt $2 ]
	then
		winMargin=$(( $1 - $2 ))
	else
		winMargin=$(( $2 - $1 ))
	fi
	echo $winMargin
}

echo "Welcome To Flip Coin Simulator"

	while [[ $numOfHeads -ne 21 && $numOfTails -ne 21 ]]
	do
		flipResult=$(( RANDOM%2 ))
		resultCounter $flipResult
	done

margin=$( marginCheck $numOfHeads $numOfTails )
if [ $margin -eq 0 ]
then
	while [ $margin -le 2 ]
	do
		flipResult=$(( RANDOM % 2 ))
		resultCounter $flipResult
		margin=$( marginCheck $numOfHeads $numOfTails )
	done
fi

if [ $numOfHeads -gt $numOfTails ]
then
	echo "Head Won  $margin over Tails"
else
	echo "Tail Won $margin over Heads"
fi
