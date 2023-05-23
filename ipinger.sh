#!/bin/bash 

if [ "$1" == "" ]
then 
echo "You forgot to enter the ip address..."
echo "Correct Syntax is: ./ipinger.sh 192.168.101"

else
for ip in `seq 1 254`; do
ping -c 1 -W 2 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done 
fi
