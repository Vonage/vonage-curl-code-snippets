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
      "text": "What do you think of Vonage APIs?",
      "suggestions": [
        {
          "reply": {
            "text": "They're great!",
            "postbackData": "suggestion_1"
          }
        },
        {
          "reply": {
            "text": "They're awesome!",
            "postbackData": "suggestion_2"
          }
        }
      ]
    }
  },
  "to": "'$TO_NUMBER'",
  "from": "'$RCS_SENDER_ID'",
  "channel": "rcs"
}'
