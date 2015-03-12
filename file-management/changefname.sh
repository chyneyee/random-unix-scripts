#!/bin/bash

# Change all the filenames ending in .f77 to .f90 in a directory

for filename in *.f77
do
	b=$(basename $filename .f77)
	mv $filename $b.f90
done
