#!/bin/bash

source "../../config.sh"
source "../../jwt.sh"

curl -X "POST" "https://api.nexmo.com/v1/conversations/$CONVERSATION_ID/events" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json' \
     -d $'{
  "type": "message",
  "from": "'$MEMBER_ID'"
  "body": {
      "message_type": "text",
      "text": "string"
   }
}'



