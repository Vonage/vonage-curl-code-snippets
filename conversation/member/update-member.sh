#!/bin/bash

source "../../config.sh"
source "../../jwt.sh"

curl -X "PUT" "https://api.nexmo.com/v1/conversations/$CONV_ID/members/$CONV_MEMBER_ID" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json' \
     -d $'{
  "state": "'$CONV_MEMBER_STATE'",
  "from": "string"
}'
