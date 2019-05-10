function oddNumbers() {
    for number in {1..99..2}
    do 
        echo $number
    done
}

# oddNumbers

# echo -e "\n"{1..99..2}
    
function oddNumbers2() {
    for (( i=1; i<=99; i++ )); do 
            number=($i%2)
            if [[ $number -eq 1 ]]; then 
                echo "$i"
            fi
    done 
}

oddNumbers2

read

