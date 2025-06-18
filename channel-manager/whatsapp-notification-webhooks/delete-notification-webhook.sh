#!/usr/bin/env bash

source "../../config.sh"

curl -X DELETE https://api.nexmo.com/v2/whatsapp-manager/subscriptions/"${CHANNEL_MANAGER_WHATSAPP_NOTIFICATION_WEBHOOK_ID}" \
  -u "${VONAGE_API_KEY}:${VONAGE_API_SECRET}"