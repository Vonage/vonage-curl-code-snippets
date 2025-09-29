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
            "type": "header",
            "parameters": [
              {
                "type": "image",
                "image": {
                  "link": "'${MESSAGES_IMAGE_URL}'"
                }
              }
            ]
          },
         {
            "type": "body",
            "parameters": [
              {
                "type": "text",
                "text": "Joe Bloggs"
              },
              {
                "type": "text",
                "text": "AB123456"
              }
            ]
          },
          {
            "type": "button",
            "index": "0",
            "sub_type": "url",
            "parameters": [
              {
                "type": "text",
                "text": "AB123456"
              }
            ]
          }
        ]
      }
    }
  }'
