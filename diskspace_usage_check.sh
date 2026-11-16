#!/bin/bash

usage=$(df -h . | tail -1 | awk -F" " '{print $(NF-1)}' | sed 's/%//g')
if [ "$usage" -ge 20 ]
then
echo "Disk Usage is More. Take action!"
else
echo "Disk Usage is under control"
fi