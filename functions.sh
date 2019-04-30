#!/bin/bash

# $0 means caller ($1 .. variables), $$ process id, $@, $?, $#
printMe(){
    
    echo "number of var: $#"
    echo "All parameter: $@"
    echo "Welcome: $1"
    echo "age: $2"
    echo "job: $3"
}

echo "Process ID $$"
#echo hello> job$$.txt
printMe Miguel 29 "Software Engineer"

ls ~/Desktop

if [ $? = "0" ]
then 
    echo "there is file"
else
    echo "no files"
fi


read