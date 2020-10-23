#!/usr/bin/env bash
source "../../config.sh"
source "../../jwt.sh"

curl -X PUT https://api.nexmo.com/v1/calls/$UUID/talk\
  -H "Authorization: Bearer "$JWT\
  -H "Content-Type: application/json"\
  -d '{"text": "Hello, hi there"}'

sleep 5s

curl -X DELETE https://api.nexmo.com/v1/calls/$UUID/talk\
  -H "Authorization: Bearer "$JWT\
  -H "Content-Type: application/json"\
