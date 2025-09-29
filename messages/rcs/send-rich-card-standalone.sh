#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST "${MESSAGES_API_URL}" \
  -H "Authorization: Bearer "$JWT\
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
    "to": "'${MESSAGES_TO_NUMBER}'",
    "from": "'${RCS_SENDER_ID}'",
    "channel": "rcs",
    "message_type": "card",
    "card": {
      "title": "Quick question",
      "text": "Do you like this picture?",
      "media_url": "'${MESSAGES_IMAGE_URL}'",
      "media_height": "SHORT",
      "media_description": "Picture of a cat",
      "thumbnail_url": "'${MESSAGES_IMAGE_URL}'",
      "media_force_refresh": false,
      "suggestions": [
        {
          "type": "reply",
          "text": "Yes",
          "postback_data": "suggestion_1"
        },
        {
          "type": "reply",
          "text": "I love it!",
          "postback_data": "suggestion_2"
        }
      ]
    },
    "rcs": {
      "card_orientation": "HORIZONTAL",
      "image_alignment": "RIGHT"
    }
  }'
