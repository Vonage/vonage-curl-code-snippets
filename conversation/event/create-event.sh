#!/bin/bash

source "../../config.sh"
source "../../jwt.sh"

curl -X "POST" "https://api.nexmo.com/v0.1/conversations/$CONVERSATION_ID/events" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json' \
     -d $'{
  "type": "text",
  "from": "'$MEMBER_ID'"
}'



