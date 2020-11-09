#!/usr/bin/env bash

source "../../config.sh"

curl -X POST "https://api.nexmo.com/v2/reports" \
  -H 'Content-Type: application/json; charset=utf-8' \
  -u "$VONAGE_API_KEY:$VONAGE_API_SECRET" \
  -d $'{
  "product": "MESSAGES",
  "account_id": "'$ACCOUNT_ID'",
  "direction": "'$REPORT_DIRECTION'",
  "status": "'$REPORT_STATUS'",
  "date_start": "'$DATE_START'",
  "date_end": "'$DATE_END'",
  "include_message": "'$INCLUDE_MESSAGE'"  
}'
