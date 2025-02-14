#!/usr/bin/env bash
source "../../config.sh"
source "../../jwt.sh"

curl -X PUT https://api.nexmo.com/v1/calls/$VOICE_CALL_ID/dtmf \
  -H "Authorization: Bearer $JWT"\
  -H "Content-Type: application/json"\
  -d '{"digits": '"$VOICE_DTMF_DIGITS"'}'
