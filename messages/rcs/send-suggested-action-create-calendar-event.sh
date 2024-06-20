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
      "text": "Product Launch: Save the date!",
      "suggestions": [
        {
          "action": {
            "text": "Save to calendar",
            "postbackData": "postback_data_1234",
            "fallbackUrl": "https://www.google.com/calendar",
            "createCalendarEventAction": {
              "startTime": "2024-06-28T19:00:00Z",
              "endTime": "2024-06-28T20:00:00Z",
              "title": "Vonage API Product Launch",
              "description": "Event to demo Vonage\'s new and exciting API product"
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
