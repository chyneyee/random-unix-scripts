#!/bin/bash

#Put the names of the recipients (one per line) in a file called names,
#create a textfile called template which has NAME wherever you want the
#person's name to appear and write a script (using sed) to produce a
#temporary file called letter fromm the template file.
for name in $(<names)
do
sed s/NAME/$name/ <template >letter
# here you could print the letter file out
done
