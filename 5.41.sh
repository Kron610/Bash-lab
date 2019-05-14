#!/bin/bash
reint='^[1-9]\d*$'
if [ -n "$1" ] && [ -n "$2" ] && [ -n "$3" ] && [[ $2 =~ $reint ]] && [[ $3 =~ $reint ]]
then
let lines=$3-$2
head -n $3 $1 | tail -$f
exit 0
else
echo -e "Bad parametrs (not found)\n1) Name of file\n2) First line\n3) Last line"
exit 1
fi
