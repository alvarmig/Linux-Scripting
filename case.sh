#!\bin\bash 

echo "please enter 1, 2 or 3"
read number 

case $number in 
    1) echo "he entered one"
        ;;
    2) echo "he entered two"
        ;;
    3) echo "he entered three"
        ;;
    *) echo "out of range"
esac

read
