#!/bin/bash

#Write a shell script that takes a uid as an argument and prints out that person's name, home directory, shell and group number. Print out the name of the group corresponding to the group number, and other groups that person may belong to. (groups, awk, cut. Also look at /etc/passwd and /etc/groups).

# assign awk output to 'name' variable.
# The uid is the third field in /etc/passwd.
# if uid from argument same as third field value, print full name (fifth field)
# Reference: http://www.cyberciti.biz/faq/understanding-etcpasswd-file-format/
uinfo=$(awk -v val=$1 -F ":" '$3==val{print "Name: "$5"\nHome Directory: "$6"\nGroup ID: "$4}' /etc/passwd)
echo "$uinfo"

gid=$(awk -v val=$1 -F ":" '$3==val{print $4}' /etc/passwd)
gid2=$(awk -v val=$gid -F ":" '$3==val{print "Group name: "$1 }' /etc/group)

og=$(id -Gn $1 | sed $'s/ /\\\n/g')
printf "Other groups: \n$og"
