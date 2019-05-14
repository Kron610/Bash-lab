#!/bin/bash
who | tr -s ' ' | cut -f1 -d' ' > usernames34
namberusers=$(wc -l < usernames34) 
let usersnamber=$namberusers 
echo 'input message' 
read message
while [ "$usersnamber" -gt 0 ] 
do 
name=$(tail -1 usernames34) 
y1=${name}' '
y1=${y1%%' '} 
let usersnamber=usersnamber-1 	       ################
head -$usersnamber usernames34 > for34 #delet last line
cat for34 > usernames34 	       ################
echo -e "Do you really want to send a\n\"$message\"\nto $y1? Input y if yes for no enter n"
read ask
if [ "$ask" == "y" ]
then
echo $message | write $y1 
fi
done
rm for34 usernames34
