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
    "message_type": "html",
    "html": {
      "body": "<h1>Hello from Vonage</h1><p>This is an Email HTML message sent via the Vonage Messages API.</p>"
    },
    "email": {
      "subject": "Your HTML message subject"
    }
  }'
