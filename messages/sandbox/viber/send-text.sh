#!/usr/bin/env bash

source "../../../config.sh"

curl -X POST $MESSAGES_SANDBOX_URL \
  -u $NEXMO_API_KEY:$NEXMO_API_SECRET \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d '{
    "from": { "type": "viber_service_msg", "id": "'$VIBER_SANDBOX_ID'" },
    "to": { "type": "viber_service_msg", "number": "'$TO_NUMBER'" },
    "message": {
      "content": {
        "type": "text",
        "text": "This is a Viber Service Message sent from the Messages Sandbox"
      }
    }
  }'
