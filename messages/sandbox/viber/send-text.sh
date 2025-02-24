#!/usr/bin/env bash

source "../../../config.sh"
source "../../../jwt.sh"

curl -X POST $MESSAGES_SANDBOX_URL \
  -H "Authorization: Bearer ${JWT}"\
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
    "to": "'${MESSAGES_TO_NUMBER}'",
    "from": "'${VIBER_SENDER_ID}'",
    "channel": "viber_service",
    "message_type": "text",
    "text": "This is an Viber Business Service text message sent using the Vonage Messages API."
  }'
