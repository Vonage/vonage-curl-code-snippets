#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST $MESSAGES_API_URL \
     -H 'Authorization: Bearer '$JWT \
     -H 'Content-Type: application/json' \
     -d $'{
  "to": {
    "type": "messenger",
    "id": "'$FB_RECIPIENT_ID'"
  },
  "message": {
    "content": {
      "type": "file",
      "file": {
        "url": "'$FILE_URL'"
      }
    }
  },
  "from": {
    "type": "messenger",
    "id": "'$FB_SENDER_ID'"
  }
}'
