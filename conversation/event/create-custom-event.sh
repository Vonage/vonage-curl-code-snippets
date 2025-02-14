#!/bin/bash

source "../../config.sh"
source "../../jwt.sh"

# `from` is only required if you're using a JWT with a `sub` claim
curl -X "POST" "https://api.nexmo.com/v1/conversations/$CONV_ID/events" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json' \
     -d $'{
  "type": "custom:YOUR_EVENT_NAME",
  "from": "'$CONV_EVENT_FROM'",
  "body": {
    "your": "data"
  }
}'
