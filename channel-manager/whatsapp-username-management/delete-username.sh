#!/usr/bin/env bash

source "../../config.sh"

curl -X PATCH https://api.nexmo.com/v1/channel-manager/whatsapp/numbers/${CHANNEL_MANAGER_WABA_NUMBER}/username \
  -u "${VONAGE_API_KEY}:${VONAGE_API_SECRET}" \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
    "username": ""
  }'
