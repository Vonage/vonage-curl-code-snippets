#!/usr/bin/env bash

source "../../config.sh"

curl -X PATCH https://api.nexmo.com/v1/channel-manager/rcs/brands/${CHANNEL_MANAGER_RCS_BRAND_ID} \
  -u "${VONAGE_API_KEY}:${VONAGE_API_SECRET}" \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
     "display_name": "'${CHANNEL_MANAGER_RCS_BRAND_NAME}'"
  }'