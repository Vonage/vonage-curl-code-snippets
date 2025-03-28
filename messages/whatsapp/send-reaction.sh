#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST "${MESSAGES_API_URL}" \
  -H "Authorization: Bearer ${JWT}"\
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
    "to": "'${MESSAGES_TO_NUMBER}'",
    "from": "'${WHATSAPP_SENDER_ID}'",
    "channel": "whatsapp",
    "message_type": "reaction",
    "reaction": {
      "action": "react",
      "emoji": "'${MESSAGES_EMOJI}'"
    },
    "context": {
        "message_uuid": "'${MESSAGES_MESSAGE_ID}'"
    }
  }'
