#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST "${MESSAGES_API_URL}" \
  -H "Authorization: Bearer "$JWT\
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
    "to": "'${MESSENGER_RECIPIENT_ID}'",
    "from": "'${MESSENGER_SENDER_ID}'",
    "channel": "messenger",
    "message_type": "audio",
    "audio": {
      "url": "'${MESSAGES_AUDIO_URL}'"
    }
  }'
