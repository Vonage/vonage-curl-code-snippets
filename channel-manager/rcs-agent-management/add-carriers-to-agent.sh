#!/usr/bin/env bash

source "../../config.sh"

curl -X POST https://api.nexmo.com/v1/channel-manager/rcs/agents/${CHANNEL_MANAGER_RCS_AGENT_ID}/carriers \
  -u "${VONAGE_API_KEY}:${VONAGE_API_SECRET}" \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
     "carriers": [
        "'${CHANNEL_MANAGER_RCS_AGENT_CARRIER_ID}'"
    ]
  }'