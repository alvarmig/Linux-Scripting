#!/bin/bash

read quantity
read num1
read num2
read num3
read num4 

sum=$(($num1+$num2+$num3+$num4))
echo $sum
echo $(($sum/$quantity))


sum=0
read n
while read -r line || [[ -n "$line" ]]; do
    sum=$(($sum + $line))
done
printf "%.3f" $(echo "scale=10; $sum/$n" | bc -l)


read n
printf "%.3f" $(echo "("$(cat)")/$n" | tr ' ' '+' | bc -l)


read n
for i in $(seq 1 $n);
    do
        read num
        sum=$((sum + num))
    done
printf "%.3f" $(echo "$sum/$n" | bc -l)


read n
arr=($(cat)) 
arr=${arr[*]}
printf "%.3f" $(echo $((${arr// /+}))/$n | bc -l)
# explanation: https://www.hackerrank.com/challenges/bash-tutorials---compute-the-average/forum/comments/133151

read