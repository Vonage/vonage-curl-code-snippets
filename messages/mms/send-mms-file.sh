#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST "${MESSAGES_API_URL}" \
  -H "Authorization: Bearer ${JWT}"\
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
    "to": "'${MESSAGES_TO_NUMBER}'",
    "from": "'${MMS_SENDER_ID}'",
    "channel": "mms",
    "message_type": "file",
    "file": {
      "url": "'${MESSAGES_FILE_URL}'"
    }
  }'
