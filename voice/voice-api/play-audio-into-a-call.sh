#!/usr/bin/env bash
source "../../config.sh"
source "../../jwt.sh"

curl -X PUT https://api.nexmo.com/v1/calls/$VOICE_CALL_ID/stream \
  -H "Authorization: Bearer $JWT"\
  -H "Content-Type: application/json"\
  -d '{"stream_url": ["'"$VOICE_STREAM_URL"'"]}'
