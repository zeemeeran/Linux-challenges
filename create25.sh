#!/bin/bash

fnum=`ls $USER* 2>/dev/null | sed "s/$USER//" | sort -n | tail -1`
echo $fnum

lnum=$(($fnum+25))

for((i=$fnum+1 ; i <= lnum ; i++))
do
        touch "$USER$i"
done
