#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST $MESSAGES_API_URL \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json' \
     -H 'Accept: application/json' \
     -d $'{
      "message_type": "text",
      "text": "This is an RCS text message sent via the Vonage Messages API",
      "to": "'$TO_NUMBER'",
      "from": "'$RCS_SENDER_ID'",
      "channel":  "rcs",
      "failover": {
        "channel": "sms",
        "message_type": "text",
        "text": "This is an RCS failover message sent as an SMS text message via the Vonage Messages API",
        "to": "'$TO_NUMBER'",
        "from": "'$FROM_NUMBER'"
      }
  }'
