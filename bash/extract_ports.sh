#!/bin/bash
# by: hwposion
# This scripts get all open ports from /proc/net/tcp, ports behind the firewall.
echo "[+]Listing Open Ports...";
for port in $(cat /proc/net/tcp | grep -oP ":([0-9A-F]{4,4}?)\s[0-9A-F]{3}" | grep -oP "[0-9A-F]{4,4}"); 
do 
	echo "ibase=16; $port" | bc; 
done;
echo "====================";