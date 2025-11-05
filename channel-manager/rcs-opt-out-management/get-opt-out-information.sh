#!/usr/bin/env bash

source "../../config.sh"

curl -G https://api.nexmo.com/v1/channel-manager/rcs/opt-out/"${CHANNEL_MANAGER_RCS_AGENT_SENDER_ID}" \
  -u "${VONAGE_API_KEY}:${VONAGE_API_SECRET}" \
  -H 'Accept: application/json'