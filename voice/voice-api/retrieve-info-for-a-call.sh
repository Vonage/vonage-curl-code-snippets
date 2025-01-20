#!/usr/bin/env bash
source "../../config.sh"
source "../../jwt.sh"

curl "https://api.nexmo.com/v1/calls/"$VOICE_CALL_ID \
  -H "Authorization: Bearer $JWT" \

