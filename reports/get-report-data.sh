#!/usr/bin/env bash

source "../config.sh"

curl -o ./report.zip -u "$NEXMO_API_KEY:$NEXMO_API_SECRET" \
     "https://api.nexmo.com/v3/media/$REPORT_ID"
