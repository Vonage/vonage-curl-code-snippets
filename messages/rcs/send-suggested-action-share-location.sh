#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST "${MESSAGES_API_URL}" \
  -H "Authorization: Bearer "$JWT\
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
    "to": "'${MESSAGES_TO_NUMBER}'",
    "from": "'${RCS_SENDER_ID}'",
    "channel": "rcs",
    "message_type": "text",
    "text": "Your driver will come and meet you at your specified location.",
    "suggestions": [
      {
        "type": "share_location",
        "text": "Share a location",
        "postback_data": "postback_data_1234"
      }
    ]
  }'
