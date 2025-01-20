#!/usr/bin/env bash
source "../../config.sh"
source "../../jwt.sh"

curl -X PUT https://api.nexmo.com/v1/calls/$VOICE_CALL_ID/talk\
  -H "Authorization: Bearer $JWT"\
  -H "Content-Type: application/json"\
  -d '{"text": "'"$VOICE_TEXT"'", "language": "'"$VOICE_LANGUAGE"'"}'
