#!/bin/sh
while true
do
    sudo nmap -sT -p1000-2000 172.16.1.20
    sleep 100 
done
