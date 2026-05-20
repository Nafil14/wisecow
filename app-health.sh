#!/bin/bash

STATUS=$(curl -o /dev/null -s -w "%{http_code}" http://localhost:8080)

if [ $STATUS -eq 200 ]
then
    echo "Application is UP"
else
    echo "Application is DOWN"
fi
