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

    printf "\n" 
    echo "${string}" | sed -e 's/\(.\)/\1\n/g'
}

function firstRecurring() {
    char=""
    counts=( m )

    read -p "Please provide a string: " string

    echo "Lenght of the string: ${#string} " 
    printf "\n" 

    for (( i=0; i<=${#string}; i++ )); do 
    char="${string:$i:1}"

    echo "${counts[@]}"
        if (( "${char}" ==  "${counts[$i]}" )); then 
            echo "we have an m"
        else 
            counts+=(${char})
        fi
    done 
}

firstRecurring

# run terminal .\'.\1-Exercise-First Recurring Character.sh'

read