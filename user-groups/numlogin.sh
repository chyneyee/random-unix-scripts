#!/bin/bash

#Write a shell script that given a person's uid, tells you how manu times that person is logged on. (who, grep, wc)

times=$(who | grep $1 | wc -l)
echo "$1 is logged $times times."

