#!/bin/bash

source "../../config.sh"
source "../../jwt.sh"

# `from` is only required if you're using a JWT with a `sub` claim
curl -X "POST" "https://api.nexmo.com/beta/conversations/$CONVERSATION_ID/events" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json' \
     -d $'{
  "type": "custom:YOUR_EVENT_NAME",
  "from": "'$MEMBER_ID'",
  "body": {
    "your": "data"
  }
}'
