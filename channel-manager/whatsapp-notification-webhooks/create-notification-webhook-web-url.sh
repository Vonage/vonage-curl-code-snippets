#!/usr/bin/env bash

source "../../config.sh"

curl -X POST https://api.nexmo.com/v2/whatsapp-manager/subscriptions \
  -u "${VONAGE_API_KEY}:${VONAGE_API_SECRET}" \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
    "type": "webhook",
    "webhook": {
      "url": "'${CHANNEL_MANAGER_WHATSAPP_NOTIFICATION_WEBHOOK_URL_WEB}'"
    }
  }'
