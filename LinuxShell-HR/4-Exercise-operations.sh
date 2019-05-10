#!/bin/bash

function operations() {
    read -p "Enter first number:" number
    read -p "Enter second number:" number2

    x=$number
    y=$number2

    echo $((number+number2))
    echo $((number-number2))
    echo $((number*number2))
    echo $((number/number2))

    printf "\n"
    printf "%s\n" $number{+,-,*,/}"($number2)" 

    printf "\n"

    for i in {+,-,"*",/}
    do
        var=$(((x)$i(y)))
        echo $var
    done
    }

operations


read
