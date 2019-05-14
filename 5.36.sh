if [ $# -eq 1 ]
then
	found=1
	while [ $found -ne 0 ]
	do
		who | cut -f1 -d " " | grep $1
		found=$?
		if [ $found -ne 0 ]
		then
			sleep 20
		fi
	done
	echo "FOUND"
else
	echo "Error"
	exit 1
fi
