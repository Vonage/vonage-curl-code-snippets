#!/usr/bin/env bash

source "../config.sh"

curl "https://api.nexmo.com/beta/audit/events/$EVENT_UUID" \
     -u "$VONAGE_API_KEY:$VONAGE_API_SECRET"

