#!/usr/bin/env bash

source "../config.sh"

curl -X "OPTIONS" "https://api.nexmo.com/beta/audit/events" \
     -u "$VONAGE_API_KEY:$VONAGE_API_SECRET"
