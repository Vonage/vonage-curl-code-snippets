#!/usr/bin/env bash

source "../config.sh"
source "../jwt.sh"

curl -X POST "${MESSAGES_API_URL}" \
  -H "Authorization: Bearer "$JWT\
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
    "to": "'${MESSAGES_TO_NUMBER}'",
    "from": "'${RCS_SENDER_ID}'",
    "channel": "rcs",
    "message_type": "text",
    "text": "This is an RCS text message sent via the Vonage Messages API",
    "failover": [
      {
        "to": "'${MESSAGES_TO_NUMBER}'",
        "from": "'${SMS_SENDER_ID}'",
        "channel": "sms",
        "message_type": "text",
        "text": "This is an SMS sent using the Vonage Messages API."
      }
    ]
  }'
