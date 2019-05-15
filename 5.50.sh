mkdir programm 2> /dev/null
while
	[ $# -gt 0 ]
do
	mv $1 ./programm
	chmod +x ./programm/$1
	shift
done
