#!/bin/bash

function compare() {
    read -p "Enter number 1: " x
    read -p "Enter number 2: " y

    if [ $x -lt $y ]; then 
        echo "$x is less than $y"
    elif [ $x -gt $y ]; then 
        echo "$x is greater than $y"
    elif [ $x -eq $y ]; then 
        echo "$x is equal to $y"
    fi
}

compare

read