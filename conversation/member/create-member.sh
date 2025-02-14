#!/bin/bash

source "../../config.sh"
source "../../jwt.sh"

curl -X "POST" "https://api.nexmo.com/v1/conversations/$CONV_ID/members" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json' \
     -d $'{
  "user": {
    "id": "'$CONV_USER_ID'"
  },
  "state": "'$CONV_MEMBER_STATE'",
  "channel": {
    "type": "app"
  }
}'




