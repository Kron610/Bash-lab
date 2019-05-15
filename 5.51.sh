mkdir programm 2> /dev/null
if
	[ $1 = '-s' ]
then
	cat programm/spisok
	shift
fi

while
	[ $# -gt 0 ]
do
	if
		[ -f $1 ]
	then
		cat $1 >> ./programm/spisok
		mv $1 ./programm
		chmod +x ./programm/$1
	fi

	shift
done
