#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST "${MESSAGES_API_URL}" \
  -H "Authorization: Bearer "$JWT\
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
    "to": "'${MESSAGES_TO_EMAIL}'",
    "from": "'${EMAIL_SENDER_ID}'",
    "channel": "email",
    "message_type": "content",
    "content": [
      {
        "type": "text",
        "text": "This is the plain-text body."
      },
      {
        "type": "html",
        "body": "<p>This is the <strong>HTML</strong> body.</p>"
      }
    ],
    "email": {
      "subject": "Your content message subject"
    }
  }'
