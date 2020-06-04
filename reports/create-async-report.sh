#!/usr/bin/env bash

source "../config.sh"

curl -X POST "https://api.nexmo.com/v2/reports" \
  -H 'Content-Type: application/json; charset=utf-8' \
  -u "$NEXMO_API_KEY:$NEXMO_API_SECRET" \
  -d $'{
  "product": "'$REPORT_PRODUCT'",
  "account_id": "'$ACCOUNT_ID'",
  "direction": "'$REPORT_DIRECTION'",
  "status": "'$REPORT_STATUS'",
  "date_start": "'$DATE_START'",
  "date_end": "'$DATE_END'"
}'
