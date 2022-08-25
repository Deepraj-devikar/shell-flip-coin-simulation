#!/bin/bash

echo "Welcome To Flip Coin Simulator Program"

function headsOrTails () {
	echo $((RANDOM%2))
}

HEADS=0
TAILS=1

flipCoin=$(headsOrTails)
if [ $flipCoin -eq $HEADS ]
then
	echo "Flip the coin and its heads winner"
elif [ $flipCoin -eq $TAILS ]
then
	echo "Flip the coin and its tails winner"
fi
