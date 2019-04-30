#!/bin/bash

echo "hello, Miguel" >  welcome.txt
echo "Whre do you live?" >> welcome.txt

echo "read file using cat"
cat welcome.txt 

printf "\n"
printf "read file line by line" 
printf "\n"

while read line 
do 
    echo $line
done < welcome.txt

printf "\n"
echo "write multi-line to file "
cat <<EOF 
    HUSSEIN
    JENA
    LAYA
EOF
cat <<EOF > users.txt
    HUSSEIN
    JENA
    LAYA
EOF

read