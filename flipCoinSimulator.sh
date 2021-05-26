#! /bin/bash -x

coinResult=$((RANDOM%2))
if [ $coinResult -eq 1 ]
then
	echo "Heads"
else
	echo "Tails"
fi

