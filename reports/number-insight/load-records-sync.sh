#!/usr/bin/env bash

source "../../config.sh"

curl -G --data-urlencode date_start=$DATE_START --data-urlencode date_end=$DATE_END -u "$NEXMO_API_KEY:$NEXMO_API_SECRET" \
     "https://api.nexmo.com/v2/reports/records?account_id=$ACCOUNT_ID&product=NUMBER-INSIGHT"
