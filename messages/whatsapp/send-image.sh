#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST $MESSAGES_API_URL \
  -H 'Authorization: Bearer '$JWT \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
    "from": { "type": "whatsapp", "number": "'$WHATSAPP_NUMBER'" },
    "to": { "type": "whatsapp", "number": "'$TO_NUMBER'" },
    "message": {
      "content": {
        "type": "image",
        "image": { 
          "url": "'$IMAGE_URL'",
          "caption": "'$IMAGE_CAPTION'"
        }
      }
    }
  }'
