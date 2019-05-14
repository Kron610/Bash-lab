str=""
while [ $# -gt 0 ]
do 
	str="${str} $1"
	shift
done
echo $str | tr " " "\n" | sort -g | tr "\n" " "



