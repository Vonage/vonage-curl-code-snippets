#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST $MESSAGES_API_URL \
  -H 'Authorization: Bearer '$JWT\
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
  "message_type": "text",
  "text": "This is a Facebook Messenger Message sent from the Messages API",
  "to": "'$FB_RECIPIENT_ID'",
  "from": "'$FB_SENDER_ID'",
  "channel": "messenger"
}'
