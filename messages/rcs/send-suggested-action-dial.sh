#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST $MESSAGES_API_URL \
     -H 'Authorization: Bearer '$JWT \
     -H 'Content-Type: application/json' \
     -H 'Accept: application/json' \
     -d $'{
  "message_type": "custom",
  "custom": {
    "contentMessage": {
      "text": "Call us to claim your free gift!",
      "suggestions": [
        {
          "action": {
            "text": "Call now!",
            "postbackData": "postback_data_1234",
            "fallbackUrl": "https://www.example.com/contact/",
            "dialAction": {
              "phoneNumber": "+447900000000"
            }
          }
        }
      ]
    }
  },
  "to": "'$TO_NUMBER'",
  "from": "'$RCS_SENDER_ID'",
  "channel": "rcs"
}'
