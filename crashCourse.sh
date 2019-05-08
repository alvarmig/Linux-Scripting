#!/bin/bash

# https://www.youtube.com/watch?v=v-F3YLd6oMw

# ECHO COMMAND
echo Hello World!

# VARIABLES 
# Uppercase by convention 
NAME="Ellen"
echo "My name is $NAME"
echo "My name is ${NAME}"


# USER INPUT
read -p "Enter your name: " NAME
echo "Hello $NAME, nice to meet you!"

# SIMPLE IF STATEMENT 
if [ "$NAME" == "Brad" ]
then 
    echo "Your name is Brad"
fi

# IF-ELSE
if [ "$NAME" == "Brad" ]
then 
    echo "Your name is Brad"
else 
    echo "Your name is not Brad"
fi
read

# ELSE-IF (elif)
if [ "$NAME" == "Brad" ]
then 
    echo "Your name is Brad"
elif [ "$NAME" == "Jack" ]
then 
    echo "Your name is Jack"
else 
    echo "Your name is NOT Brad or Jack"
fi

#COMPARISON 

read -p "Enter your NUM1: " NUM1
read -p "Enter your NUM2: " NUM2

if [ "$NUM1" -gt "$NUM2" ]
then 
    echo "$NUM1 is greater than $NUM2"
else 
    echo "$NUM1 is less than $NUM2"
fi

########
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2
########

# FILE CONDITIONS
FILE="profile.txt"

if [ -f "$FILE" ]
then 
    echo "$FILE is a file"
else 
    echo "$FILE is NOT a file"
fi

########
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable
########

#CASE STATEMENT 
read -p "Are you 21 or over? Y/N" ANSWER
case "$ANSWER" in 
    [yY] | [yY][eE][sS]) echo "You can have a beer ;)" 
        ;;
    [nN] | [nN][oO]) echo "Sorry no drinking"
        ;;
    *) echo "please enter y/yes or n/no"
esac

# SIMPLE FOR LOOP 
NAMES="Brad Kevin Alice Mark"
for NAMES in $NAMES
    do 
        echo "Hello $NAMES"
done

#touch 1.txt 2.txt 3.txt
# FOR LOOP TP RENAME FILES
FILES=$(ls *.txt)
NEW="new"

for FILE in $FILES 
    do 
        echo "Renaming $FILE to new-$FILE"
        mv $FILE $NEW-$FILE
done

# WHILE LOOP - READ THROUGH A FILE LINE BY LINE
LINE=1
while read -r CURRENT_LINE
    do 
        echo "$LINE: $CURRENT_LINE"
        ((LINE++))
done < "./new-1.txt"

printf "\n"
printf "\n"

while read LINE 
do 
    echo $LINE

done < "./new-1.txt"
echo $LINE

# FUNCTION 
function sayHello() {
    echo "Hello World"
}

#function with PARAMS
function greet() {
    echo "Hello, I am $1 and I am $2"
}

# greet "Miguel" "36"

# CREATE FOLDER AND WRITE TO A FILE
function createFile() {
    mkdir hello 
    touch "hello/world.txt"
    echo "Hello World" >> "hello/world.txt"
    echo "Created hello/world.txt"
}

read
