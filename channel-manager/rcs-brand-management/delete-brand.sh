#!/usr/bin/env bash

source "../../config.sh"

curl -X DELETE https://api.nexmo.com/v1/channel-manager/rcs/brands/${CHANNEL_MANAGER_RCS_BRAND_ID} \
  -u "${VONAGE_API_KEY}:${VONAGE_API_SECRET}" 
  