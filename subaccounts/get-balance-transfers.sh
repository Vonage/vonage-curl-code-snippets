#!/usr/bin/env bash

source "../config.sh"

curl "https://api.nexmo.com/accounts/$VONAGE_API_KEY/balance-transfers?start_date=$START_DATE" -u $VONAGE_API_KEY:$VONAGE_API_SECRET
