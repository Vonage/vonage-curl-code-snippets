#!/usr/bin/env bash

source "../../config.sh"

curl -X DELETE https://api.nexmo.com/v1/channel-manager/rcs/agents/${CHANNEL_MANAGER_RCS_AGENT_ID}/test-devices/${CHANNEL_MANAGER_RCS_AGENT_TEST_DEVICE_ID} \
  -u "${VONAGE_API_KEY}:${VONAGE_API_SECRET}"