#!/bin/bash

arr=(1 2 3 4)

echo ${arr[0]}
echo ${arr[1]}
echo ${arr[2]}
echo ${arr[3]}

printf "\n"

array=( one two three )
for i in "${array[@]}"
do
	echo $i
done

printf "\n"
arr2=("cow" "bird" "fish" "cat")

for i in "${arr2[@]}"
do 
    echo $i
done

printf "\n"

files=( "/etc/passwd" "/etc/group" "/etc/hosts" )
limits=( 10, 20, 26, 39, 48)

printf "%s\n" "${files[@]}"
printf "\n"
printf "%s\n" "${limits[@]}"
printf "\n"

read
