#!/bin/bash

echo "Welcome To Flip Coin Simulator Program"

function headsOrTails () {
	echo $((RANDOM%2))
}

HEADS=0
TAILS=1

function twoPoints () {
	tempHeadsCounter=0
	tempTailsCounter=0
	while [ 1 ]
	do
		flipCoin=$(headsOrTails)
		if [ $flipCoin -eq $HEADS ]
		then
			tempHeadsCounter=$(($tempHeadsCounter+1))
		elif [ $flipCoin -eq $TAILS ]
		then
			tempTailsCounter=$(($tempTailsCounter+1))
		fi
		if [ $(($tempHeadsCounter-$tempTailsCounter)) -ge 2 ]
		then
			echo "Heads won"
			break
		elif [ $(($tempTailsCounter-$tempHeadsCounter)) -ge 2 ]
		then
			echo "Tails won"
			break
		fi
	done
}

for (( i=0; i<42; i++ ))
do
	flipCoin=$(headsOrTails)
	if [ $flipCoin -eq $HEADS ]
	then
		headsCounter=$(($headsCounter+1))
	elif [ $flipCoin -eq $TAILS ]
	then
		tailsCounter=$(($tailsCounter+1))
	fi
done
headsCounter=21
tailsCounter=21
if [ $headsCounter -eq $tailsCounter ]
then
	echo "its tie"
	echo "$(twoPoints)"
elif [ $headsCounter -gt $tailsCounter ]
then
	echo "Heads won"
elif [ $tailsCounter -gt $headsCounter ]
then
	echo "Tails won"
fi

