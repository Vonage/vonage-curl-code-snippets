#!/usr/bin/env bash

source "../config.sh"

curl -G --data-urlencode date_start=$DATE_START --data-urlencode date_end=$DATE_END -u "$VONAGE_API_KEY:$VONAGE_API_SECRET" \
     "https://api.nexmo.com/v2/reports/records?account_id=$ACCOUNT_ID&product=$REPORT_PRODUCT&direction=$REPORT_DIRECTION"
