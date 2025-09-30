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
    "message_type": "carousel",
    "carousel": {
      "cards": [
        {
          "title": "Option 1: Photo",
          "text": "Do you prefer this photo?",
          "media_url": "'${MESSAGES_IMAGE_URL}'",
          "media_height": "SHORT",
          "media_description": "Picture of a cat",
          "thumbnail_url": "'${MESSAGES_IMAGE_URL}'",
          "media_force_refresh": false,
          "suggestions": [
            {
              "type": "reply",
              "text": "Option 1",
              "postback_data": "card_1"
            }
          ]
        },
        {
          "title": "Option 2: Video",
          "text": "Or this video?",
          "media_url": "'${MESSAGES_VIDEO_URL}'",
          "media_height": "SHORT",
          "media_description": "Video of a cat",
          "thumbnail_url": "'${MESSAGES_IMAGE_URL}'",
          "media_force_refresh": false,
          "suggestions": [
            {
              "type": "reply",
              "text": "Option 2",
              "postback_data": "card_2"
            }
          ]
        }
      ]
    },
    "rcs": {
      "card_width": "SMALL"
    }
  }'
