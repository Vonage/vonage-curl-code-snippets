#!/usr/bin/env bash

source "../../config.sh"

curl -G https://api.nexmo.com/v1/channel-manager/whatsapp/wabas/"${CHANNEL_MANAGER_WABA_ID}"/pricing-analytics \
  -u "${VONAGE_API_KEY}:${VONAGE_API_SECRET}" \
  -H 'Accept: application/json' \
  --data-urlencode start=$CHANNEL_MANAGER_WHATSAPP_ANALYTICS_START \
  --data-urlencode end=$CHANNEL_MANAGER_WHATSAPP_ANALYTICS_END \
  --data-urlencode granularity=$CHANNEL_MANAGER_WHATSAPP_ANALYTICS_GRANULARITY
