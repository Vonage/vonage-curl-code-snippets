#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST "${MESSAGES_API_URL}" \
  -H "Authorization: Bearer "$JWT\
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
    "to": "'${MESSAGES_TO_NUMBER}'",
    "from": "'${WHATSAPP_SENDER_ID}'",
    "channel": "whatsapp",
    "message_type": "custom",
    "custom": {
      "type": "location",
      "location": {
        "longitude": -122.425332,
        "latitude": 37.758056,
        "name": "Facebook HQ",
        "address": "1 Hacker Way, Menlo Park, CA 94025"
      }
    }
  }'
