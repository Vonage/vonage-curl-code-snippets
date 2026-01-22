#!/usr/bin/env bash
source "../../config.sh"
source "../../jwt.sh"

curl -X DELETE https://api.nexmo.com/v1/calls/$VOICE_CALL_ID/stream \
  -H "Authorization: Bearer "$JWT\
  -H "Content-Type: application/json"
