#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST $MESSAGES_API_URL \
  -H 'Authorization: Bearer '$JWT\
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
          "message_type": "image",
          "image": {
            "url": "https://example.com/image.jpg"
          },
          "to": "'$TO_NUMBER'",
          "from": "'$FROM_NUMBER'",
          "channel": "viber_service"

}'
