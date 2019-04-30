#!/bin/bash 

for i in {1..4}
do 
    echo "hello ${i}"
done

for i in 10 20 50
do 
    echo "hello ${i}"
done

#read files in current directory
for fileName in *
do 
    echo "fileName: $fileName"
done

# example 
for i in {1..100}
do 
    if [[ $i -gt 10 && $i -lt 50 ]]; then
        echo "i: ${i}"
    fi
done

read