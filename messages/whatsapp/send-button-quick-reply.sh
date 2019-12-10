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
          "name": "upcoming_trip_reminder",
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
    }
  }
}'
