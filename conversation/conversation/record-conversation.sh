#!/bin/bash

source "../../config.sh"
source "../../jwt.sh"

curl -X "PUT" "https://api.nexmo.com/v1/conversations/$CONVERSATION_ID/record" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json'
     -d $'{
  "action": "start",
  "event_url": "$RECORDING_URL"
  "format": "mp3"
}'

sleep 5s

curl -X "PUT" "https://api.nexmo.com/v1/conversations/$CONVERSATION_ID/record" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json'
     -d $'{
  "action": "stop",
}'

