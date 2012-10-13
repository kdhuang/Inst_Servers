#!/bin/bash

servers=( delicious.cs.berkeley.edu barry.cs.berkeley.edu )

for server in "${servers[@]}"; do
	ping=`ping -c 2 $server`
	if [ -n "$ping" ]; then
		echo -e "$server \t Status: Running"
	else
		echo -e "$server \t Status: Not Running"
	fi
done