#!/bin/bash

#Change the args script supplied earlier so that if no argument is provided, "They are" isn't printed, and if exactly 1 argument is provided, "... 1 argument" rather than "... 1 arguments" is printed (use if)

if [ $# -eq 1 ]
then
string="It is "
ending=""

else
string="They are "
ending="s"
fi 

echo This $0 command has $# argument${ending}.

if [ $# != 0 ]
then
echo $string $*
fi
