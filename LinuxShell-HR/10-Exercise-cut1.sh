#!/bin/bash

while read line 
do 
    echo $line | cut -c 3
done 

read