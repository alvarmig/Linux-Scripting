#!\bin\bash 
wc -l < users.txt
cat users.txt

cat users.txt | wc -l
printf "\n"
(cat users.txt | wc -l) && echo "Done!"
printf "\n"
ls sfhsdjkfhajkdsf || echo "failed to ls"
printf "\n"
lines=`wc -l < users.txt`
echo "There are ${lines} of lines in the users.txt"

read 