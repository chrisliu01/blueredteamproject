#!/bin/sh
while true
do
    curl -d "username=admin&password=password" -X POST  http://172.16.1.20/dvwa/login.php
    sleep 5
done
