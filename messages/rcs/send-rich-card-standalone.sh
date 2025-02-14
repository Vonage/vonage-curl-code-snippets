#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST "${MESSAGES_API_URL}" \
  -H "Authorization: Bearer ${JWT}"\
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
    "to": "'${MESSAGES_TO_NUMBER}'",
    "from": "'${RCS_SENDER_ID}'",
    "channel": "rcs",
    "message_type": "custom",
    "custom": {
      "contentMessage": {
        "richCard": {
          "standaloneCard": {
            "thumbnailImageAlignment": "RIGHT",
            "cardOrientation": "VERTICAL",
            "cardContent": {
              "title": "Quick question",
              "description": "Do you like this picture?",
              "media": {
                "height": "TALL",
                "contentInfo": {
                  "fileUrl": "'${MESSAGES_IMAGE_URL}'",
                  "forceRefresh": "false"
                }
              },
              "suggestions": [
                {
                  "reply": {
                    "text": "Yes",
                    "postbackData": "suggestion_1"
                  }
                },
                {
                  "reply": {
                    "text": "I love it!",
                    "postbackData": "suggestion_2"
                  }
                }
              ]
            }
          }
        }
      }
    }
  }'
