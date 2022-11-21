echo -n "Number of total file in this directory: "
ls | wc -l
echo -n "Name of the largest file: "
find . -printf '%s %p\n'| sort -nr | head -1
