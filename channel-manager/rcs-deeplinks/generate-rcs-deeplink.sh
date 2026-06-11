#!/usr/bin/env bash

source "../../config.sh"

curl -X POST https://api.nexmo.com/v1/channel-manager/rcs/deeplink/generate \
  -u "${VONAGE_API_KEY}:${VONAGE_API_SECRET}" \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
     "sender_id": "'${CHANNEL_MANAGER_RCS_AGENT_SENDER_ID}'",
     "country": "'${COUNTRY_CODE}'"
  }'
