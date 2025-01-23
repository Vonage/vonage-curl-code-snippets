#!/usr/bin/env bash
source "../../config.sh"
source "../../jwt.sh"

curl $VOICE_RECORDING_URL \
  -H "Authorization: Bearer $JWT" \
  --output recording.mp3

