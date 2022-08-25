#!/bin/bash

echo "Welcome To Flip Coin Simulator Program"

function headsOrTails () {
	echo $((RANDOM%2))
}

HEADS=0
TAILS=1

headsCounter=0
tailsCounter=0
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

if [ $headsCounter -eq $tailsCounter ]
then
	echo "Its tie"
elif [ $headsCounter -gt $tailsCounter ]
then
	echo "Heads won"
elif [ $tailsCounter -gt $headsCounter ]
then
	echo "Tails won"
fi

