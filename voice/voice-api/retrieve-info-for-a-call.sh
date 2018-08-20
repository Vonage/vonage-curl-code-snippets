#!/bin/bash
source "../../config.sh"
source "../../jwt.sh"

UUID=$(curl -s -X POST https://api.nexmo.com/v1/calls\
  -H "Authorization: Bearer "$JWT\
  -H "Content-Type: application/json"\
  -d '{"to":[{"type": "phone","number": "'$TO_NUMBER'"}],
      "from": {"type": "phone","number": "'$NEXMO_NUMBER'"},
      "answer_url":["https://developer.nexmo.com/ncco/tts.json"]}' \
      | awk -F "[,:]" '/uuid/{print substr($2,2,length($2)-2)}')

curl "https://api.nexmo.com/v1/calls/"$UUID \
  -H "Authorization: Bearer "$JWT \

