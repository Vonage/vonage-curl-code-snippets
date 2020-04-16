#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST $MESSAGES_API_URL \
  -H 'Authorization: Bearer' $JWT \
  -H 'Content-Type: application/json' \
  -d '{
  "from": {
    "type": "whatsapp",
    "number": "'$WHATSAPP_NUMBER'"
  },
  "to": {
    "type": "whatsapp",
    "number": "'$TO_NUMBER'"
  },
  "message": {
    "content": {
      "type": "custom",
      "custom": {
        "type": "location",
        "location": {
          "longitude": -122.425332,
          "latitude": 37.758056,
          "name": "Facebook HQ",
          "address": "1 Hacker Way, Menlo Park, CA 94025"
        }
      }
    }
  }
}'
