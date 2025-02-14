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
        "text": "Check out our latest offers!",
        "suggestions": [
          {
            "action": {
              "text": "Open product page",
              "postbackData": "postback_data_1234",
              "openUrlAction": {
                "url": "http://example.com/"
              }
            }
          }
        ]
      }
    }
  }'
