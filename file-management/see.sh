#!/bin/bash

#Write a shell script called see taking a filename name as argument which uses ls if the file's a directory and more if the file's otherwise (test)

for file in $*
do
if [ -d $file ]
then
ls $file
else
more $file
fi
done
