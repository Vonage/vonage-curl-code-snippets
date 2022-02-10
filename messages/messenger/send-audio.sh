#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST $MESSAGES_API_URL \
     -H 'Authorization: Bearer '$JWT \
     -H 'Content-Type: application/json' \
     -d $'{
  "message_type": "audio",
  "audio": {
    "url": "'$AUDIO_URL'"
  },
  "to": "'$FB_RECIPIENT_ID'",
  "from": "'$FB_SENDER_ID'",
  "channel": "messenger"
}'
