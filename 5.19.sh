echo "Enter names"
read str
echo $str | cut -f1,2,3 -d' '
echo $str | cut -f4- -d' ' | tr " " "\n" | sed 's/^/extra>/' 

