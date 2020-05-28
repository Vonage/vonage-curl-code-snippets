#!/usr/bin/env bash

source "../config.sh"

curl -X DELETE -u "$NEXMO_API_KEY:$NEXMO_API_SECRET" \
     "https://api.nexmo.com/v2/reports/$REPORT_ID