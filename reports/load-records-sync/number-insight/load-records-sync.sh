#!/usr/bin/env bash

source "../config.sh"

curl -u "$NEXMO_API_KEY:$NEXMO_API_SECRET" \
     "https://api.nexmo.com/v2/reports/records?account_id=$ACCOUNT_ID&product=NUMBER-INSIGHT&date_start=$DATE_START&date_end=$DATE_END"
