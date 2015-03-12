#!/bin/bash

#Read in two numbers from the keyboard and print their sum
#(see the read, echo and let commands in the shell manual page).

first_num=0
second_num=0

echo -n "Enter the first number --> "
read first_num
echo -n "Enter the second number --> "
read second_num

let sum=$first_num+$second_num
echo "The sum of two numbers is $sum"

