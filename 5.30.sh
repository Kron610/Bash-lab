if [ $# -eq 1 ]
then
        z=0
        echo "input $1 numbers across Enter"
        let m=$1
        while [ $m -ne 0 ]
        do
                read y
                let z=$z+$y
                let m=$m-1
        done
        echo "sum is equal $z"
else
	echo error
fi
