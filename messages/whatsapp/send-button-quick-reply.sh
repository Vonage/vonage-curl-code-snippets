#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST $MESSAGES_API_URL \
     -H 'Authorization: Bearer' $JWT  \
     -H 'Content-Type: application/json' \
     -d '{
  "message_type": "custom",
  "to": "'$TO_NUMBER'",
  "from": "'$WHATSAPP_NUMBER'",
  "channel": "whatsapp",
  "custom": {
    "type": "template",
    "template": {
      "namespace": "'$WHATSAPP_TEMPLATE_NAMESPACE'",
      "name": "'$WHATSAPP_TEMPLATE_NAME'",
      "language": {
        "code": "en",
        "policy": "deterministic"
      },
      "components": [
        {
          "type": "header",
          "parameters": [
            {
              "type": "text",
              "text": "12/26"
            }
          ]
        },
        {
          "type": "body",
          "parameters": [
            {
              "type": "text",
              "text": "*Ski Trip*"
            },
            {
              "type": "text",
              "text": "2019-12-26"
            },
            {
              "type": "text",
              "text": "*Squaw Valley Ski Resort, Tahoe*"
            }
          ]
        },
        {
          "type": "button",
          "sub_type": "quick_reply",
          "index": 0,
          "parameters": [
            {
              "type": "payload",
              "payload": "Yes-Button-Payload"
            }
          ]
        },
        {
          "type": "button",
          "sub_type": "quick_reply",
          "index": 1,
          "parameters": [
            {
              "type": "payload",
              "payload": "No-Button-Payload"
            }
          ]
        }
      ]
    }
  }
}'
