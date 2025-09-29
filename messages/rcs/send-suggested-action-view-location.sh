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
   "message_type": "text",
    "text": "Drop by our office!",
    "suggestions": [
      {
        "type": "view_location",
        "text": "View map",
        "postback_data": "postback_data_1234",
        "latitude": "51.5230371",
        "longitude": "-0.0852492",
        "pin_label": "Vonage London Office",
        "fallback_url": "https://www.google.com/maps/place/Vonage/@51.5230371,-0.0852492,15z"
      }
    ]
  }'
