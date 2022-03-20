#!/bin/bash
# Author : Zee

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
