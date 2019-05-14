if [ $# -ne 2 ]
then
	echo Error
else
	if [ -e $2 ]
	then
		echo "Do you want to rewrite the file?(Yes/No)"
		read ANS
		case $ANS in
			Yes) cp -f $1 $2 ;;
			No) cat $1 >> $2 ;;
			*) echo Error ;;
		esac
	else
		cp $1 $2
	fi
fi
