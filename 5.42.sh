#!/bin/bash
if [ -n "$1" ]
then
echo "Enter first"
read f
echo "Enter last"
read l
let e=$l-$f
head -n $l $1 | tail -$e
else
echo -e "No parametrs found.\nEnter name of file"
