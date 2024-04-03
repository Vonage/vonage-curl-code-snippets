#!/usr/bin/env bash

source "../../../config.sh"

curl -X POST $MESSAGES_SANDBOX_URL \
  -u $VONAGE_API_KEY:$VONAGE_API_SECRET \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d '{
    "from": { "type": "viber_service_msg", "id": "'$MESSAGES_SANDBOX_VIBER_ID'" },
    "to": { "type": "viber_service_msg", "number": "'$MESSAGES_SANDBOX_ALLOW_LISTED_TO_NUMBER'" },
    "message": {
      "content": {
        "type": "text",
        "text": "This is a Viber Service Message sent from the Messages Sandbox"
      }
    }
  }'
