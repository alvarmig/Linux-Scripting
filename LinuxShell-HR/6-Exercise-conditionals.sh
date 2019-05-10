#!/bin/bash

read char

case "$char" in 
    [yY] | [yY][eE][sS]) echo "YES" 
        ;;
    [nN] | [nN][oO]) echo "NO"
        ;;
    *) echo "please enter y/yes or n/no"
esac

read char; 
echo -e "YES\nNO\n" | grep -i $char

read