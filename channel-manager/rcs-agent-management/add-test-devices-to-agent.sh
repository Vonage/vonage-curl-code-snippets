#!/usr/bin/env bash

source "../../config.sh"

curl -X POST https://api.nexmo.com/v1/channel-manager/rcs/agents/${CHANNEL_MANAGER_RCS_AGENT_ID}/test-devices \
  -u "${VONAGE_API_KEY}:${VONAGE_API_SECRET}" \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
     "phone":  "'${CHANNEL_MANAGER_RCS_AGENT_TEST_DEVICE_NUMBER}'"
  }'