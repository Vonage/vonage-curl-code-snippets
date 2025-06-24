#!/usr/bin/env bash

source "../../config.sh"

curl --get https://api.nexmo.com/v1/channel-manager/whatsapp/wabas/"${CHANNEL_MANAGER_WABA_ID}"/messaging-analytics \
  -u "${VONAGE_API_KEY}:${VONAGE_API_SECRET}" \
  -H 'Accept: application/json' \
  -d 'start="'${CHANNEL_MANAGER_WHATSAPP_ANALYTICS_START}'"' \
  -d 'end="'${CHANNEL_MANAGER_WHATSAPP_ANALYTICS_END}'"' \
  -d 'granularity="'${CHANNEL_MANAGER_WHATSAPP_ANALYTICS_GRANULARITY}'"'
