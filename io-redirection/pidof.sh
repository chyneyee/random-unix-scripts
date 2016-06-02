#!/bin/bash

#Takes a name as parameter and returns the PID(s) of processes with that name.

#Check if the name is a running process
pidof $1 >/dev/null
if [[ $? -eq 0 ]]; then
  printf "PID\tProcess Name\n"
  echo -e "$(pidof $1)\t$1"
else
  echo "Process is not running. PID not found."
fi
