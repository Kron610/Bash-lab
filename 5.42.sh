#!/bin/bash
reint='^[1-9]\d*$'
if [ -n "$1" ]
then
echo "Enter first"
read f
while  ! [[ $f =~ $reint ]]
                do
                echo 'Input wrong'
                read f
                done

echo "Enter last"
read l
while  ! [[ $l =~ $reint ]]
                do
                echo 'Input wrong'
                read l
                done
let e=$l-$f
head -n $l $1 | tail -$e
else
echo -e "No parametrs found.\nEnter name of file"
