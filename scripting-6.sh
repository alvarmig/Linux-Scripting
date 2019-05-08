#!\bin\bash 

# Do we have at least two arguments
function arguments() {

    REQUIRED_ARGS=2

    if [[ $# -lt REQUIRED_ARGS ]]; then 
        echo "Not enough arguments." 
        printf "\n" 
        echo "Call this script with ./{$0} <name> <age>"
    elif [[ $# -eq REQUIRED_ARGS ]]; then 
        echo "Argument 1: ${1}"
        echo "Argument 2: ${2}"
    fi 
    printf "\n" 
}
arguments Miguel 29
arguments Miguel 

function readName() {
    read -p "Name:" NAME

    HAT_TIP="tip of the hat*"
    HEAD_SHAKE="slow head shake*"

    if [ $NAME = "Dave" ]; then 
        echo "Hi Dave!"
    elif [ "$NAME" == "Steve" ]; then
        echo $HAT_TIP
    else 
        echo $HEAD_SHAKE
    fi
}

## helpers
# && and 
# || or 

## in your terminal 
    function helpers() {
    echo "hi" || echo "this won't happen."
    printf "\n"
    $(ls nonexistentfile) || echo "This happens if the first thing fails"
    printf "\n"
    echo $(pwd) && echo "This ALSO happens!"
}

function equality() {
    ## Strings
    str1="a"
    str2="b"

    # Equality (= and !=) (ASCII comparison)
    if [ "$str1" = "$str2" ]; then 
        echo "${str1} is equal to ${str2}!"
    fi

    if [ "$str1" != "$str2" ]; then 
        echo "${str1} is NOT equal to ${str2}!"
    fi
}

function nully() {
    # NOT Null (-n) or Zero length (-z)
    notnull="this is not null"
    null=""

    if [ -n "$notnull" ]; then 
        echo "This is not at all null"
    fi

    if [ -z "$null" ]; then 
        echo "This is zero length"
    fi
}

# Integers

function integers() {
    
    read -p "integer 1: " int1
    read -p "integer 2: " int2

    printf "\n"
    # equal, not equal
    if [ $int1 -eq $int2 ]; then 
        echo "$int1 is equal to $int2"
    fi 
    if [ $int1 -ne $int2 ]; then 
        echo "${int1} is NOT equal to ${int2}"
    fi 
    printf "\n"
    # greater than, less than +equal 
    # -gt, lt -ge -le
    if [ $int1 -gt $int2 ]; then 
        echo "$int1 is greater than $int2"
    fi 
    if [ $int1 -le $int2 ]; then 
        echo "${int1} is less than or equal to ${int2}"
    fi 
    printf "\n"

    # string comparison operators can be used with double parentheses
    if (( $int1 == $int2 )); then 
        echo "${int1} is equal to ${int2}."
    fi

    # (())
    # == Is Equal To
    # != Not equals to
    # < Is Less than 
    # <= Is Less than Or Equal to 
    # > is Greater than 
    # >= is Greater than Or Equal to 
}

read