#!/bin/bash
echo 'input 5 numbers'
z=0
re='^[+-]?[0-9]+([.][0-9]+)?$'
for x in 1 2 3 4 5
do
	read y
	while  ! [[ $y =~ $re ]] #$BASH_REMATCH содержит результат сравнения с регудярным выражением
	do
	echo 'Input wrong'
	read y
	done 
	let z=$z+$y
done
echo " sum is equal $z "
exit 0
