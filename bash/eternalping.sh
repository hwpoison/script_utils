#!/bin/bash
# chmod +x eternalping.sh
# This bash scripts do a infitine ping to google and save packets stats in a file.
# Recommended use: ./eternalping.sh &
echo "[+]EP Started..."
interval=0 # 
if [[ $1 ]];
then 
				interval=$1
fi 

while true; 
do
ping google.com -c 5 | awk '/= [0-9]| google.com/ { print $0 } END{ print strftime("Date of ping = %m/%d/%Y %H:%M:%S\n", systime())}' >> info.txt; sleep $interval; 
done
