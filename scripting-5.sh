#!\bin\bash 

# $# -- number of args that our script was run with
# $0 -- the filename of our script
# $1..$n -- script arguments

# what's our filename?
filename=$0
echo $filename

# how many arguments was the script called with?
numArg=$#
echo $numArg

# what were the arguments?
echo "these are the arguments of the script ${1}, ${2}, ${3} "

read