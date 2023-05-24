#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl --X POST \
  --url https://api.nexmo.com/v2/verify/$REQUEST_ID \
  -H "Authorization: Bearer "$JWT\
  -H 'Content-Type: application/json' \
  -d $'{
    "code": "'$CODE'"
}'