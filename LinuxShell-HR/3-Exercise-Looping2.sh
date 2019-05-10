#!/bin/bash

function loop() {
    for number in {1..50..1}
    do 
        echo $number
    done
}

loop

printf "\n"

function loop2() {
    for (( i=1; i<=50; i++ ))
    do 
        echo $i
    done
}

loop2
read