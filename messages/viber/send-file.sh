#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST "${MESSAGES_API_URL}" \
  -H "Authorization: Bearer "$JWT\
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
    "to": "'${MESSAGES_TO_NUMBER}'",
    "from": "'${VIBER_SENDER_ID}'",
    "channel": "viber_service",
    "message_type": "file",
    "file": {
      "url": "'${MESSAGES_FILE_URL}'"
    }
  }'
