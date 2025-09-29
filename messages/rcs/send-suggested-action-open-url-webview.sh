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
    "text": "Check out our latest offers!",
    "suggestions": [
      {
        "type": "open_url_in_webview",
        "text": "Open product page",
        "postback_data": "postback_data_1234",
        "url": "http://example.com/",
        "description": "A URL for the Example website",
        "view_mode": "FULL"
      }
    ]
  }'
