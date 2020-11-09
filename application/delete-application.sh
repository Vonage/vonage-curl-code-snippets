#!/bin/bash

source "../config.sh"

curl -X "DELETE" "https://api.nexmo.com/v2/applications/$VONAGE_APPLICATION_ID" \
     -H 'Content-Type: application/json' \
     -u "$VONAGE_API_KEY:$VONAGE_API_SECRET"

