#!/bin/bash

source "../config.sh"

curl -X "GET" "https://api.nexmo.com/v2/applications/$NEXMO_APPLICATION_ID" \
     -H 'Content-Type: application/json' \
     -u "$NEXMO_API_KEY:$NEXMO_API_SECRET"

