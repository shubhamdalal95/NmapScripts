#!/bin/bash
echo "Enter any file name:"
read -p "FileName:" fname
echo "----------------checking-----------------"
sleep 2
if [ -e /root/$fname ]
then

	echo "File exists"
else
	echo "File not exists"
fi
