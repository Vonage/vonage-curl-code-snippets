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
        "text": "Drop by our office!",
        "suggestions": [
          {
            "action": {
              "text": "View map",
              "postbackData": "postback_data_1234",
              "fallbackUrl": "https://www.google.com/maps/place/Vonage/@51.5230371,-0.0852492,15z",
              "viewLocationAction": {
                "latLong": {
                  "latitude": "51.5230371",
                  "longitude": "-0.0852492"
                },
                "label": "Vonage London Office"
              }
            }
          }
        ]
      }
    }
  }'
