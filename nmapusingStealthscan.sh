#!/bin/bash
echo "Enter any ip address for Stealth Scan"
read -a ip_addr
for i in ${ip_addr[@]}
do
	nmap -sS $i > Hello.txt
	echo "-------------Scanning is Completed------------------"
	echo "select the following options:"
	echo "Host_Status,Port_Status,MAC_Address"
	read -p "Options:" ch
	case $ch in
		Host_status)
			grep "Host" Hello.txt
			  ;;
		MAC_Address)
			grep "MAC" Hello.txt
			  ;;
		*)
			echo "Enter valid input"
			  ;;
	esac
done


