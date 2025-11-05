#!/usr/bin/env bash

source "../../config.sh"

curl -X POST https://api.nexmo.com/v1/channel-manager/rcs/opt-out/${CHANNEL_MANAGER_RCS_AGENT_SENDER_ID} \
  -u "${VONAGE_API_KEY}:${VONAGE_API_SECRET}" \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
   "actions": [
      {
         "keywords": [
            "STOP"
         ],
         "auto-reply": "You have opted out.",
         "action": "STOP"
      }
   ]
}'