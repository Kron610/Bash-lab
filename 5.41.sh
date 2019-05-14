#!/bin/bash
if [ -n "$1" ] && [ -n "$2" ] && [ -n "$3" ]
then
let lines=$3-$2
head -n $3 $1 | tail -$f
else
echo -e "No parametrs found\n1) Name of file\n2) First line\n3) Last line"
fi
