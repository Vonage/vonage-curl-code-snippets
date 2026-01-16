#!/bin/bash

source "../config.sh"

curl -X "GET" "https://api.nexmo.com/v1/emergency/numbers/$EMERGENCY_NUMBER" \
     -H 'Content-Type: application/json' \
     -u "$VONAGE_API_KEY:$VONAGE_API_SECRET"