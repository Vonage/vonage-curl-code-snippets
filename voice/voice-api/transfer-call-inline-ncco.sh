#!/usr/bin/env bash
source "../../config.sh"
source "../../jwt.sh"

curl -X PUT https://api.nexmo.com/v1/calls/$VOICE_CALL_ID \
  -H "Authorization: Bearer $JWT" \
  -H "Content-Type: application/json"\
  -d '{"action": "transfer",
      "destination": {"type": "ncco", "ncco": [{"action":"talk", "text":"This is a transfer action using an inline NCCO"}]}}'
