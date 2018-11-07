#!/bin/bash

source "../../config.sh"
source "../../jwt.sh"

curl -X "PUT" "https://api.nexmo.com/beta/conversations/$CONVERSATION_ID" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json' \
     -d $'{
  "name": "$NEW_CONV_NAME",
  "display_name": "$NEW_CONV_DISPLAY_NAME"
}'



