#!/usr/bin/env bash

source "../../../config.sh"
source "../../../jwt.sh"

curl -X POST $MESSAGES_SANDBOX_URL \
  -H "Authorization: Bearer "$JWT\
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
    "to": "'${MESSAGES_TO_NUMBER}'",
    "from": "'${WHATSAPP_SENDER_ID}'",
    "channel": "whatsapp",
    "message_type": "text",
    "text": "This is a WhatsApp text message sent using the Vonage Messages API."
  }'
