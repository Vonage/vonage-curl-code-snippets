#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST "${MESSAGES_API_URL}" \
  -H "Authorization: Bearer "$JWT\
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
    "to": "'${MESSAGES_TO_NUMBER}'",
    "from": "'${WHATSAPP_SENDER_ID}'",
    "channel": "whatsapp",
    "message_type": "template",
    "whatsapp": {
      "policy": "deterministic",
      "locale": "en"
    },
    "template":{
      "name": "'${WHATSAPP_TEMPLATE_NAME}'",
      "parameters":[
        "Joe Bloggs",
        "AB123456"
      ]
    }
  }'
