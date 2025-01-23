#!/bin/bash

source "../../config.sh"
source "../../jwt.sh"

curl -X "POST" "https://api.nexmo.com/v1/conversations/$CONV_ID/events" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json' \
     -d $'{
  "type": "'$CONV_EVENT_TYPE'",
  "from": "'$CONV_EVENT_FROM'"
  "body": {
      "message_type": "text",
      "text": "string"
   }
}'