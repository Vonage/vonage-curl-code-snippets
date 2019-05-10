#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X "POST" "https://api.nexmo.com/v0.1/messages" \
     -H 'Authorization: Bearer '$JWT \
     -H 'Content-Type: application/json' \
     -d $'{
  "to": {
    "type": "messenger",
    "id": "'$FB_RECIPIENT_ID'"
  },
  "message": {
    "content": {
      "type": "image",
      "image": {
        "url": "'$IMAGE_URL'"
      }
    }
  },
  "from": {
    "type": "messenger",
    "id": "'$FB_SENDER_ID'"
  }
}'
