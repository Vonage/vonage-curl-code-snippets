#!/bin/bash

source "../config.sh"

curl -X "PUT" "https://api.nexmo.com/v2/applications/$VONAGE_APPLICATION_ID" \
     -H 'Content-Type: application/json' \
     -u "$VONAGE_API_KEY:$VONAGE_API_SECRET" \
     -d $'{
  "name": "New App Name",
  "capabilities": {
    "messages": {
      "webhooks": {
        "inbound_url": {
          "address": "https://example.com/webhooks/inbound",
          "http_method": "POST"
        },
        "status_url": {
          "address": "https://example.com/webhooks/status",
          "http_method": "POST"
        }
      }
    },
    "voice": {
      "webhooks": {
        "answer_url": {
          "address": "https://example.com/webhooks/answer",
          "http_method": "POST"
        },
        "event_url": {
          "address": "https://example.com/webhooks/event",
          "http_method": "POST"
        }
      }
    },
    "rtc": {
      "webhooks": {
        "event_url": {
          "address": "https://example.com/webhooks/event",
          "http_method": "POST"
        }
      }
    },
    "vbc": {},
    "verify": {
      "webhooks": {
        "status_url": {
          "address": "https://example.com/webhooks/status",
          "http_method": "POST"
        }
      }
    }
  }
}'

