#!/bin/bash

source "../config.sh"

curl -X "PUT" "https://api.nexmo.com/beta/users/$USER_ID" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json' \
     -d $'{
  "name": "ANOTHER_NEW_NAME",
  "display_name": "A New Display Name"
}'


