#!/bin/bash

source "../../config.sh"

curl -X "PATCH" "https://api.nexmo.com/v1/channel-manager/whatsapp/wabas/"${CHANNEL_MANAGER_WABA_ID}"/enable_insights" \
  -u "${VONAGE_API_KEY}:${VONAGE_API_SECRET}"
