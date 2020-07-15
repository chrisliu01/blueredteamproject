#!/bin/sh
while true
do
    curl http://172.16.1.20/dvwa/vulnerabilities/sqli_blind/?id=1&Submit=Submit
    sleep 5
done
