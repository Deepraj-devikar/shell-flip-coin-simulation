#!/bin/bash

echo "Welcome To Flip Coin Simulator Program"

function headsOrTails () {
	echo $((RANDOM%2))
}

HEADS=0
TAILS=1

headsCounter=0
tailsCounter=0
for (( i=0; i<10; i++ ))
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

echo "$headsCounter times heads won and $tailsCounter times tails won"
