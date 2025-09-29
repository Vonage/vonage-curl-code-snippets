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
    "message_type": "custom",
    "custom": {
      "type": "template",
      "template": {
        "name": "'${WHATSAPP_TEMPLATE_NAME}'",
        "language": {
          "policy": "deterministic",
          "code": "en"
        },
        "components": [
          {
            "type": "body",
            "parameters": [
              {
                "type": "text",
                "text": "'${WHATSAPP_OTP}'"
              }
            ]
          },
          {
            "type": "button",
            "sub_type": "url",
            "index": "0",
            "parameters": [
              {
                "type": "text",
                "text": "'${WHATSAPP_OTP}'"
              }
            ]
          }
        ]
      }
    }
  }'
