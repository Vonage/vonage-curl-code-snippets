#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST $MESSAGES_API_URL \
     -H 'Authorization: Bearer' $JWT \
     -H 'Content-Type: application/json' \
     -d '{
  "message_type": "custom",
  "to": "'$TO_NUMBER'",
  "from": "'$WHATSAPP_NUMBER'",
  "channel": "whatsapp",
  "custom": {
    "type": "template",
    "template": {
      "name": "'$WHATSAPP_TEMPLATE_NAME'",
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
                "link": "'$IMAGE_URL'",
              }
            },
          ]
        },
        {
          "type": "body",
          "parameters": [
            {
              "type": "text",
              "text": "'$WHATSAPP_TEMPLATE_REPLACEMENT_TEXT'"
            }
          ]
        }
      ]
    }
  }
}'
