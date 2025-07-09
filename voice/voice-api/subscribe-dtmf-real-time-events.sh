#!/usr/bin/env bash
source "../../config.sh"
source "../../jwt.sh"

curl -X PUT https://api.nexmo.com/v1/calls/$VOICE_CALL_ID/input/dtmf \
  -H "Authorization: Bearer $JWT"\
  -H "Content-Type: application/json"\
  -d '{"event_url": "'"VOICE_EVENT_URL"'"}'
