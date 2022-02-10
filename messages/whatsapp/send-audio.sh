#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST $MESSAGES_API_URL \
  -H 'Authorization: Bearer '$JWT \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
  "message_type": "audio",
  "audio": {
    "url": "'$AUDIO_URL'"
  },
  "to": "447700900000",
  "from": "'$WHATSAPP_NUMBER'",
  "channel": "'$TO_NUMBER'"
}'
