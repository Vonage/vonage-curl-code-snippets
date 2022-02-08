#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST $MESSAGES_API_URL \
  -H 'Authorization: Bearer' $JWT \
  -H 'Content-Type: application/json' \
  -d '{
  "message_type": "template",
  "template": {
    "name": "'$WHATSAPP_TEMPLATE_NAMESPACE':'$WHATSAPP_TEMPLATE_NAME'",
    "parameters": [
      "Value 1",
      "Value 2",
      "Value 3"
    ]
  },
  "to": "'$TO_NUMBER'",
  "from": "'$WHATSAPP_NUMBER'",
  "channel": "whatsapp",
  "whatsapp": {
    "policy": "deterministic",
    "locale": "en-US"
  }
}'
