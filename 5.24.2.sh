#!/bin/bash
#Creates a second file if it did not exist
if [ -n "$1" ] && [ -n "$2" ]
	then
	if test -f $1
		then
		if test ! -f $2
		then 
			touch $2
		fi
		echo 'input "y" if you want lose info in second file'
		echo 'input "n" if you want add data in the end of second file'
		read ans
                while [ "$ans" != "y" ] && [ "$ans" != "n" ]
                do
                echo 'Bad input! Input "y" or "n"'
                read ans
                done
                if [ "$ans" = "y" ]
                        then
                                cat $1 > $2
                        fi
                if [ "$ans" = "n" ]
                        then
                                cat $1 >> $2
                        fi
                exit 0

	else
		echo "file $1 not exist"
		exit 1
	fi
else
echo "No parametrs found."
exit 1
fi
