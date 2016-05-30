#!/bin/awk -f

BEGIN{i=1;}
{
if(NR > 2)
{print NR,$1,$2,$3,$4,$5}}
END{}

