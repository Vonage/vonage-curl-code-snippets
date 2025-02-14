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
        "text": "Your driver will come and meet you at your specified location.",
        "suggestions": [
          {
            "action": {
              "text": "Share a location",
              "postbackData": "postback_data_1234",
              "shareLocationAction": {}
            }
          }
        ]
      }
    }
  }'
