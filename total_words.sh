//Using combination of for and if//

#!/bin/bash
echo "Enter the name"
read name

for i in $name
do
if [ -f $i ]
then
wc=$(wc -w < $i)
echo "Number of words in a $i is $wc
else
echo "File $i not found"
fi
done


//Using if condition//

#!/bin/bash

echo "Enter the name"
read name

if [ -f $name ]
then
wc=$(wc -w < $name)
echo "Total number of words in a file are $wc"
else
echo "File not found"
fi