#!/bin/bash

#In many versions of unix there is a -i argument for cp so that you will be prompted for confirmation if you are about to overwrite a file. Write a script called cpi which will prompt if necessary without using the -i argument. (test)

if [ -f $2 ]
then
echo "$2 exists. Do you want to overwrite the file [y/n]?"
read yn
if [ $yn = "N" -o $yn = "n" ]
then
exit 0
fi
fi
cp $1 $2
