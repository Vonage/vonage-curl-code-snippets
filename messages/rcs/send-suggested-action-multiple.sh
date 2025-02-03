#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST "${MESSAGES_API_URL}" \
  -H "Authorization: Bearer ${JWT}"\
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
    "to": "'${TO_NUMBER}'",
    "from": "'${RCS_SENDER_ID}'",
    "channel": "rcs",
    "message_type": "custom",
    "custom": {
      "contentMessage": {
        "text": "Need some help? Call us now or visit our website for more information.",
        "suggestions": [
          {
            "action": {
              "text": "Call us",
              "postbackData": "postback_data_1234",
              "fallbackUrl": "https://www.example.com/contact/",
              "dialAction": {
                "phoneNumber": "+447900000000"
              }
            }
          },
          {
            "action": {
              "text": "Visit site",
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
