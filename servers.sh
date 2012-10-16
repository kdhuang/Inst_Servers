#!/bin/bash

servers=()

while read line; do
	servers+=($line)
done < "servers.txt"

for server in "${servers[@]}"; do
	ping=`ping -c 2 $server`
	if [ -n "$ping" ]; then
		echo -e "$server \t Status: Running"
	else
		echo -e "$server \t Status: Not Running"
	fi
done
