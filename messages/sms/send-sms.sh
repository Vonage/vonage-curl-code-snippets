#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST https://api.nexmo.com/v1/messages \
  -H 'Authorization: Bearer '$JWT\
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
          "message_type": "text",
          "text": "Nexmo Verification code: 12345. Valid for 10 minutes.",
          "to": "'$TO_NUMBER'",
          "from": "'$FROM_NUMBER'",
          "channel": "sms"
}'
