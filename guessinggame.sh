#!/usr/bin/env bash
# File: guessinggame.sh

function ask {
	echo "How many files are in current Directory?"
	read guess
	if ! [[ $guess =~ ^[0-9]+$ ]]
	then	
		echo "Please guess a number"
		ask
	fi
}

let numfiles=$(ls . | wc -l)

echo "Hi this is the GuessingGame."
ask
while [[ $guess -ne $numfiles ]]
do
	if [[ $guess -gt $numfiles ]]
	then
		echo "The number of files in the current directory is lower\
than $guess"
	else
		echo "the number of files in the current directory \
is higher than $guess"
	fi
	ask
done
echo "Congratulations! You guessed it: there are $numfiles files in the \
current Directory"
echo "Thanks for playing Guessing Game"


