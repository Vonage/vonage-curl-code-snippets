#!/usr/bin/env bash

source "../../config.sh"

curl -G https://api.nexmo.com/v1/channel-manager/whatsapp/wabas/${CHANNEL_MANAGER_WABA_ID}/numbers/${CHANNEL_MANAGER_WABA_NUMBER}/profile \
  -u "${VONAGE_API_KEY}:${VONAGE_API_SECRET}" \
  -H 'Accept: application/json' \
