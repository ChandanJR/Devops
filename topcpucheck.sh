#!/bin/bash

usage=$(top -bn1 | grep "CPU(s)" | awk '{print 100-$8}')
if [ $usage -ge 75 ]
then
echo "Cup utilization had exceeded the limit" |mail -s "CPU utilization has exceeded take action" -c "chandanjr@gmail.com"
else
echo "CPU Utilization is under control"
fi