#!/usr/bin/env bash

source "../../config.sh"

curl -G https://api.nexmo.com/v1/channel-manager/rcs/agents \
  -u "${VONAGE_API_KEY}:${VONAGE_API_SECRET}" \
  -H 'Accept: application/json' \