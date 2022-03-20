#!/bin/bash
# Author : Zee
# Create twenty-five empty (0 KB) files
# The file names should be <yourName><number>, <yourName><number+1>, <yourName><number+2> and so on.
# Design the script so that each time you execute it, it creates the next batch of 25 files with increasing numbers starting with the last or max number that already exists.
# Do not hard code these numbers. You need to generate them using automation.


#getting starting file number FNUM var from bash profile file
#export FNUM=1 - this is stored in bash profile file

fnum=$FNUM
lnum=$(($fnum+25))

for ((i=fnum ; i < lnum ; i++))
do
        touch "$USER$i"
done

#((lnum++))

#replacing FNUM in bash profile with new starting file number
sed -i "s/FNUM.*/FNUM=$lnum/" ~/.profile

export FNUM
source ~/.profile
