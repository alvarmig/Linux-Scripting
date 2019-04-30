#!/bin/bash
echo "Enter Degree"
read degree

# -gt, -lt, -ge, -le, -eq, -ne
if [ $degree -gt 50 ] 
then 
    echo "pass"
fi

if [ "$degree" -lt "50" ] 
then 
    echo "fail"
fi

if [ $degree  -ge  50 ] 
then 
    echo "study more"
fi

# if [ "$degree"  -eq  "80" ]; then 
#    echo "He got 80"
#elif [ "$degree"  -eq  "70" ]; then 
#    echo "He got 70"
#fi

[ "$degree"  -eq  "80" ] &&  echo "He got 80" || echo "he did not get 80"
[ "$degree"  -eq  "70" ] &&  echo "He got 70"

if [ "$degree"  -eq  "80" ]; then 
    echo "He got 80" 
else 
    echo "he did not get 80"
fi

read
