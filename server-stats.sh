#!/bin/bash

##################
echo "User:"
##################

whoami

##################
echo "OS version:"
##################

cat /etc/os-release | head  -n 5

##################
echo "Total CPU usage:"
##################

top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4 "%"}'

##################
echo "Uptime:"
##################

uptime

##################
echo "Total memory usage:"
##################

top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4 "%"}'

#################
echo "Total disk usage:"
#################

top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4 "%"}'

#################
echo "Top 5 processes by CPU usage:"
#################

ps aux --sort -%cpu | head -n 6 | awk '{print $1 "\t" $2 "\t" $4 "\t" $11}'

#################
echo "Top 5 processes by memory usage:"
#################

ps aux --sort -%cpu | head -n 6 | awk '{print $1 "\t" $2 "\t" $3 "\t" $11}'


