#!/bin/bash
name=Miguel
fullname="Miguel Alvarado"
age=29

echo "name: ${name} is the short name of  ${fullname} is ${age} "
echo $fullname 
echo "age: $age"

age=$(expr $age + 1)

echo $age

read