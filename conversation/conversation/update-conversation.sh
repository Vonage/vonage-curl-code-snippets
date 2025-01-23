#!/bin/bash

source "../../config.sh"
source "../../jwt.sh"

curl -X "PUT" "https://api.nexmo.com/v1/conversations/$CONV_ID" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json' \
     -d $'{
  "name": "$CONV_NAME",
  "display_name": "$CONV_DISPLAY_NAME"
}'



