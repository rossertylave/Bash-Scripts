#!/bin/bash

#################
echo "Top 5 IP address with most requests:$top5IP"
#################

cat nginx-access.log | awk '{print $1}' | sort | uniq -c | sort -nr | head -n 5 

#################
echo "Top 5 most requested paths:"
#################

cat nginx-access.log | awk -F'"' '{print $2}' | awk '{print $2}' | sort | uniq -c | sort -nr | head -n 5

#################
echo "Top 5 response status codes:"
#################

cat nginx-access.log | awk '{print $9}' | sort | uniq -c | sort -nr | head -n 5

#################
echo "Top 5 user agents:"
################

cat nginx-access.log | awk -F'"' '{print $6}' | sort | uniq -c | sort -nr | head -n 5
