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
  "to": "'$TO_NUMBER'",
  "from": "'$WHATSAPP_NUMBER'",
  "channel": "whatsapp"
}'
