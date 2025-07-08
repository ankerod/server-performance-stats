#!/bin/bash

echo "####################"
echo '##  System Uptime ##'
echo "####################"

uptime | awk '{print $1}'

echo

echo "####################"
echo '##    CPU Util    ##'
echo "####################"

top -bn1 | grep "%Cpu(s):" | cut -d ',' -f 4 | awk '{print "Usage: " 100 -$1 "%"}'

echo

echo "####################"
echo '##    MEM Usage   ##'
echo "####################"

echo "Total: $(free -h | grep "Mem:" | awk '{print $2}')"
echo "Used: $(free -h | grep "Mem:" | awk '{print $3}')"


echo

echo "####################"
echo '##   Disk Usage   ##'
echo "####################"

echo "Total: $(df -h | grep "/" -w | awk '{print $2}')"
echo "Used: $(df -h | grep "/" -w | awk '{print $3 " ("$5")"}')"
echo "Free: $(df -h | grep "/" -w | awk '{print $4}')"

echo

echo "####################"
echo '##   Top 5 MEM    ##'
echo "####################"

ps aux --sort -%mem | head -n 6 | awk '{print $1 "\t" $2 "\t" $4 "\t" $11}'

echo

echo "####################"
echo '##   Top 5 CPU    ##'
echo "####################"

ps aux --sort -%cpu | head -n 6 | awk '{print $1 "\t" $2 "\t" $3 "\t" $11}'