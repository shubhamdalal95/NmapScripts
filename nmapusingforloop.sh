#!/bin/bash
echo "Enter ip address you want to scan:"
read -a ip_list
for i in ${ip_list[@]}
do
	nmap -sS $i 2>&1 >/dev/null
if [ $? -eq 0 ]
then
	echo "Host $i is alive"
else
	echo "Host $i isnot alive"
fi
done

