#!/bin/bash

#Sort /etc/passwd using the uid as the key. (sort)
sort -t":" -k3,3 /etc/passwd
