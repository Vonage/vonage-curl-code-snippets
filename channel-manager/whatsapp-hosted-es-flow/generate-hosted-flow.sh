#!/usr/bin/env bash

source "../../config.sh"

curl -X PATCH https://api.nexmo.com/v1/channel-manager/whatsapp/tp-registration/url \
  -u "${VONAGE_API_KEY}:${VONAGE_API_SECRET}" \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
    "solution_id": "123456789111213",
    "api_key": "'${CHANNEL_MANAGER_WHATSAPP_PARTNER_API_KEY}'",
    "ttl": 300
    }'
