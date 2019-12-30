#!/bin/bash
echo "--------------------Welcome to Nmap Scanner-----------------------"
echo "Enter Target Network or Subnetwork"
read -a  ip
for i in ${ip[@]}
do
	echo "-----------------Scanning---------------"
#	ping -c 1 -w 3 $i 2>&1 >/dev/null
	nmap $i 2>&1 >/dev/null
if [ $? -eq 0 ]
then
	echo "Host $i is up"
else
	echo "Host $i is not alive"
fi
done
