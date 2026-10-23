#!/usr/bin/env bash
source "../../config.sh"
source "../../jwt.sh"

curl -X POST https://api.nexmo.com/v1/calls\
  -H "Authorization: Bearer $JWT"\
  -H "Content-Type: application/json"\
  -d '{"to":[{"type": "phone","number": "'$VOICE_TO_NUMBER'"}],
      "from": {"type": "phone","number": "'$VONAGE_VIRTUAL_NUMBER'"},
      "ncco": [{"action": "wait","timeout": 60}],
      "event_url": ["'"$VOICE_EVENT_URL"'"],
      "advanced_machine_detection": {
        "behavior": "continue",
        "mode": "default",
        "beep_timeout": 30,
        "call_screener": true
      }}'
