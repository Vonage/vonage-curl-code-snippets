#!/bin/bash

source "../../config.sh"
source "../../jwt.sh"

curl -X "POST" "https://api.nexmo.com/v0.1/conversations/$CONVERSATION_ID/members" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json' \
     -d $'{
  "user_id": "'$USER_ID'",
  "action": "invite",
  "channel": {
    "type": "app"
  }
}'




