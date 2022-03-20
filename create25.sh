#!/bin/bash

# Create twenty-five empty (0 KB) files
# The file names should be <yourName><number>, <yourName><number+1>, <yourName><number+2> and so on.
# Design the script so that each time you execute it, it creates the next batch of 25 files with increasing numbers starting with the last or max number that already exists.
# Do not hard code these numbers. You need to generate them using automation.



fnum=`ls $USER* 2>/dev/null | sed "s/$USER//" | sort -n | tail -1`
echo $fnum

lnum=$(($fnum+25))

for((i=$fnum+1 ; i <= lnum ; i++))
do
        touch "$USER$i"
done
