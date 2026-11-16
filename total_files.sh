#!/bin/bash
echo "Enter the name"
read name
if [ -d "$name" ]
then
ls $name
total_files=$(ls -1 | wc -l)
echo "Total number of files inside a directory are $total_files"
else
echo "Directory not found"
fi