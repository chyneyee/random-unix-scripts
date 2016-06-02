#!/bin/bash

# 1. Add a usage() function to your pidof script which prints usage instructions.
# 2. Call usage() if the wrong number of parameters is passed to the script.


function usage()
{
  echo "Wrong number of parameters. Please enter only one parameter."
}

pidof $1 >/dev/null

#if process is running, print the PID and process name
if [[ $? -eq 0 ]]
then
  printf "PID\tProcess Name\n"
  echo -e "$(pidof $1)\t$1"
elif [[ "$#" -ne 1 ]]
then
  usage
else
  echo "Process is not running. PID not found."
fi
