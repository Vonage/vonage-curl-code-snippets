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
              "type": "image",
              "image": {
                "link": "'$HEADER_IMAGE_URL'"
              }
            }
          ]
        },
        {
          "type": "body",
          "parameters": [
            {
              "type": "text",
              "text": "Anand"
            },
            {
              "type": "text",
              "text": "Quest"
            },
            {
              "type": "text",
              "text": "113-0921387"
            },
            {
              "type": "text",
              "text": "23rd Nov 2019"
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
              "text": "1Z999AA10123456784"
            }
          ]
        }
      ]
    }
  }
}'
