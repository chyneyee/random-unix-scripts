#!/bin/bash

#Write a shell script that asks the user to type a word in, then tells the user how long that word is. (read, wc)

echo -n "Type a word for count word length --> "
read word
echo "The length of $word is ${#word} letters long" 
