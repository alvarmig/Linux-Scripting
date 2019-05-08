#!\bin\bash 
## https://www.youtube.com/watch?v=9EfN5clA710&t=565s

function arguments() {
    NUM_REQUIRED_ARGS=2
    num_args=$#

    # Do we have at least two argumetns? 
    if [ $num_args -lt $NUM_REQUIRED_ARGS ]; then 
        echo "Not enough arguments."
        echo "Call this script with ${0} <name> <number>"
        printf "\n" 
    fi

    # Set variables using arguments
    export name=$1
    number=$2
    echo "Your first two argument were: $1 $2"
    printf "\n" 
    # for loops; iteration, string interpolation 
    echo "You ran this program with ${num_args} arguments. Here they are: "
    for arg in "$@"; do 
        echo "$arg"
    done
}

## arguments Miguel 30

# two ways of defining a function 
spaced() {
    # parameters are not named; they are positional 
    echo 
    echo "#####################"
    echo "$1"
    echo "#####################"
    echo 
}

# define a function 
function javatest() {
    read -p "Please enter a number: " number

    #testing and conditionals
    if [[ $number -eq 99 ]]; then 
        spaced "You win! You guessed the secred number! it's amazing"
    elif (( $number <= 10 )); then 
        spaced "You are a courageous one. But you lose." 

        # set a variable interactively
        echo "Hi ${name}, to advert a horrible death, please enter the password: "
        read password

        if [[ "$password" != "Java" ]]; then 
            spaced "Well, at least you're not a Java Programmer. You can go now."
        else
            spaced "DIEEEE!! Actually, nevermind. You are free to leave"
        fi
    fi
}

function characters() {
    char=""
    read -p "Please provide a string: " string

    echo "Lenght of the string: ${#string} " 
    printf "\n" 

    for (( i=0; i<${#string}; i++ )); do 
        char="${string:$i:1}"
        echo "$char"
            if [ $char == "m" ]; then 
                echo "we have an 'm' "
            fi
    done 

    printf "\n" ss
    echo "${string}" | sed -e 's/\(.\)/\1\n/g'
}

characters

read