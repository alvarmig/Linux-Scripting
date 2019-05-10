#!/bin/bash
# works only in linux environment
# https://www.lifewire.com/use-the-bc-calculator-in-scripts-2200588

exp='5+50*3/20 + (19*2)/7'
printf "%.3f" $(echo $exp | bc -l)

printf "\n"

num='5+50*3/20 + (19*2)/7'
echo $num | bc -l | xargs printf "%.3f"

printf "\n"


read