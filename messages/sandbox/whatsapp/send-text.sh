#!/usr/bin/env bash

source "../../../config.sh"

curl -X POST $MESSAGES_SANDBOX_URL \
  -u $VONAGE_API_KEY:$VONAGE_API_SECRET \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d '{
    "from": { "type": "whatsapp", "number": "'$MESSAGES_SANDBOX_WHATSAPP_NUMBER'" },
    "to": { "type": "whatsapp", "number": "'$MESSAGES_SANDBOX_ALLOW_LISTED_TO_NUMBER'" },
    "message": {
      "content": {
        "type": "text",
        "text": "This is a WhatsApp Message sent from the Messages Sandbox"
      }
    }
  }'
