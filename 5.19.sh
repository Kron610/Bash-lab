echo "Enter names"
read str
for i in 1 2 3
do
	echo $str | cut -f$i -d " " 
done | sort -d
echo $str | cut -f4- -d " "| tr " " "\n" | sed 's/^/extra>/' 

