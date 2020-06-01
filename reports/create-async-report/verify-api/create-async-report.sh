#!/usr/bin/env bash

source "../config.sh"

curl -X POST "https://api.nexmo.com/v2/reports" \
    -H 'Content-Type: application/json; charset=utf-8' \
    -u "$NEXMO_API_KEY:$NEXMO_API_SECRET" \
    -d $'{
  "product": "VERIFY-API",
  "account_id": "'$ACCOUNT_ID'",
  "include_subaccounts": true
}'
