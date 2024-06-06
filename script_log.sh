#!/bin/bash

URL="http://localhost"  # Replace with your actual URL if different

LOG_FILE="/var/log/health_check.log"

HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" $URL)

DATE=$(date '+%Y-%m-%d %H:%M:%S')

echo "$DATE - HTTP Status: $HTTP_STATUS" >> $LOG_FILE
