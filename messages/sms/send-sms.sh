#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST https://api.nexmo.com/v1/messages \
  -H 'Authorization: Bearer '$JWT\
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
    "to": "'$TO_NUMBER'",
    "from": "'$FROM_NUMBER'",
    "channel": "sms",
    "message_type": "text",
    "text": "This is an SMS sent using the Vonage Messages API."
  }'
