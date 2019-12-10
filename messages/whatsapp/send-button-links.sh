#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST \
  https://api.nexmo.com/v0.1/messages \
  -H 'Authorization: Bearer' $JWT  \
  -H 'Content-Type: application/json' \
  -d '{
  "from": {
    "type": "whatsapp",
    "number": "'$WHATSAPP_NUMBER'"
  },
  "to": {
    "type": "whatsapp",
    "number": "'$TO_NUMBER'"
  },
  "message": {
    "content": {
      "type": "custom",
      "custom": {
        "type": "template",
        "template": {
          "namespace": "88b39973_f0d5_54e1_29cf_e80f1e3da4f2",
          "name": "oculus_shipment_update",
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
                    "link": "'$HEADER_IMAGE_LINK'"
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
    }
  }
}'
