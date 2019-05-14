if [ $# -eq 1 ]
then
	found=1
	while [ $found -ne 0 ] #waiting for entrance
	do
		who | grep -q $1 
		found=$?
		if [ $found -ne 0 ]
		then
			sleep 20
		else
			echo "IN" > prot37
			who | grep $1 | cut -f10 -d " " >> prot37 #field 10 is the time
		fi
	done
	while [ $found -eq 0 ] #waiting for exit
	do
		who | grep -q $1 
		found=$?
		if [ $found -eq 0 ]
		then
			sleep 1
		else
			echo "OUT" >> prot37
			date "+%H:%M" >> prot37
			echo "$1 is out. All iformation in prot37"
		fi
	done
else
	echo "Error"
	exit 1
fi
