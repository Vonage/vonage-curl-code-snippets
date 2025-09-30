#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST https://api.nexmo.com/v1/messages \
  -H "Authorization: Bearer "$JWT\
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
    "to": "'${MESSAGES_TO_NUMBER}'",
    "from": "'${SMS_SENDER_ID}'",
    "channel": "sms",
    "message_type": "text",
    "text": "This is an SMS sent using the Vonage Messages API."
  }'
