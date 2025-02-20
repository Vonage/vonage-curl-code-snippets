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
        "text": "What do you think of Vonage APIs?",
        "suggestions": [
          {
            "reply": {
              "text": "Great!",
              "postbackData": "suggestion_1"
            }
          },
          {
            "reply": {
              "text": "Awesome!",
              "postbackData": "suggestion_2"
            }
          }
        ]
      }
    }
  }'
