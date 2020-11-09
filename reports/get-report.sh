#!/usr/bin/env bash

source "../config.sh"

curl -o report.zip -u "$VONAGE_API_KEY:$VONAGE_API_SECRET" \
     "https://api.nexmo.com/v3/media/$FILE_ID"
