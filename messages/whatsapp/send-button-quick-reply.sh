#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST "${MESSAGES_API_URL}" \
  -H "Authorization: Bearer ${JWT}"\
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
                "type": "text",
                "parameter_name": "appointment_date_1",
                "text": "26th of February 2025"
              }
            ]
          },
          {
            "type": "body",
            "parameters": [
              {
                "type": "text",
                "parameter_name": "customer_name",
                "text": "Joe Bloggs"
              },
              {
                "type": "text",
                "parameter_name": "dentist_name",
                "text": "Mr Smith"
              },
              {
                "type": "text",
                "parameter_name": "appointment_date_2",
                "text": "2025-02-26"
              },
              {
                "type": "text",
                "parameter_name": "appointment_location",
                "text": "ACME Dental Practice"
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
