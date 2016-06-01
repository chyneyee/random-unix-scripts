#!/bin/bash

#A script that generates a random secret number between 1 and 100.
#It keeps asking the user to guess the secret number until they guess correctly.
#The script should give the user hint such as "I'm sorry your guess is too low" or "I'm sorry your guess is too high".

#Generate random numbers
NUM=$((RANDOM%100+1))

while true;
do

#Ask the user to guess the secret number between 1 and 100
  echo -n "Guess the secret number (range 1 - 100):";
  read input;

#Validate the input within 1 to 100
  if (( input < 1 || input > 100 )); then
     echo "The guess number must be between 1 and 100."
     continue
  fi
  if ((input < NUM)); then
     echo "I'm sorry your guess is too low."
  elif ((input > NUM)); then
     echo "I'm sorry your guess is too high.";
  else
     echo "Your guess is correct. The number is $NUM"
     break
  fi
done
