#!/bin/bash

source "../../config.sh"
source "../../jwt.sh"

curl -X "PATCH" "https://api.nexmo.com/v1/users/$USER_ID" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json' \
     -d $'{
  "name": "'$USER_NAME'",
  "display_name": "'$USER_DISPLAY_NAME'"
}'
