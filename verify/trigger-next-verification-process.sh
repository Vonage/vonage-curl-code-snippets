#!/usr/bin/env bash
source "../config.sh"

curl -X GET -G "https://api.nexmo.com/verify/control/json" \
  -d "api_key=$NEXMO_API_KEY" \
  -d "api_secret=$NEXMO_API_SECRET" \
  -d "request_id=$REQUEST_ID" \
  -d "cmd=trigger_next_event"
