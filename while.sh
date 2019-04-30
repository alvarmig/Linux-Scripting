#!/bin/bash

#while [ -n $name ]; do
#    echo "Enter Name: "
#    read name 
#    echo "name: $name"
#done

while read line 
do 
    echo $line

done < profile.txt
echo $line

read