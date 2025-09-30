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
    "text": "Need some help? Call us now or visit our website for more information.",
    "suggestions": [
      {
        "type": "dial",
        "text": "Call us",
        "postback_data": "postback_data_1234",
        "phone_number": "+447900000000",
        "fallback_url": "https://www.example.com/contact/"
      },
      {
        "type": "open_url",
        "text": "Visit site",
        "postback_data": "postback_data_1234",
        "url": "http://example.com/",
        "description": "A URL for the Example website"
      }
    ]
  }'
