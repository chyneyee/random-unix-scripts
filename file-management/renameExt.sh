#/bin/bash

#Rename all .txt files as .text files.

for f in *.txt
do
   mv "$f" "$(basename "$f" .txt).text"
done
