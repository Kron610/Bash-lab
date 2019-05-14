DATE=$(date +%H)
case $DATE in
	[6-9]|1[0-1])
		echo "Good Morning";;
	1[2-7])
		echo "Good Afternoon";;
	1[8-9]|2[0-1])
		echo "Good Evening";;
	2[2-3]|[0-5])
		echo "Good Night";;
esac

