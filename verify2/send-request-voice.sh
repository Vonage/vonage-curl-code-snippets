#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl --X POST \
  --url https://api.nexmo.com/v2/verify \
  -H "Authorization: Bearer "$JWT\
  -H 'Content-Type: application/json' \
  -d $'{
	 "brand": "'$BRAND_NAME'",
   "workflow": [
      {
         "channel": "voice",
         "to": "'$TO_NUMBER'"
      },
   ]
}'