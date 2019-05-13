#!/bin/bash
reint='^[1-9]\d*$'
re='^[+-]?[0-9]+([.][0-9]+)?$'
if [ "$#" -eq 1 ] && [[ $1 =~ $reint ]]
then
        z=0
        echo "we sum $1 numbers"
        echo "input $1 numbers across Enter"
        let m=$1
        while [ "$m" -ne 0 -a "$m" -gt -1 ]
        do
                read y
        	while  ! [[ $y =~ $re ]]
        	do
        	echo 'Input wrong'
        	read y
        	done
                let z=$z+$y
                let m=$m-1
        done
        echo "sum is equal $z"
	exit 0
else
        echo 'bad argument'
        echo 'next time enter who much numbers you want to sum'
	exit 1
fi
