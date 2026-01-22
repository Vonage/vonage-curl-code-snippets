#!/usr/bin/env bash
source "../../config.sh"
source "../../jwt.sh"

curl -X POST https://api.nexmo.com/v1/calls\
  -H "Authorization: Bearer "$JWT\
  -H "Content-Type: application/json"\
  -d '{"to":[{"type": "phone","number": "'$VOICE_TO_NUMBER'"}],
      "from": {"type": "phone","number": "'$VONAGE_VIRTUAL_NUMBER'"},
      "answer_url":["'"$VOICE_ANSWER_URL"'"]}'
