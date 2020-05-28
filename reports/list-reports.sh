#!/usr/bin/env bash

source "../config.sh"

curl -u "$NEXMO_API_KEY:$NEXMO_API_SECRET" \
     "https://api.nexmo.com/v2/reports?account_id=$ACCOUNT_ID&status=$REPORT_STATUS"