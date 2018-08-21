#!/bin/bash
source "../../config.sh"
source "../../jwt.sh"

curl -X PUT https://api.nexmo.com/v1/calls/$UUID/stream \
  -H "Authorization: Bearer "$JWT\
  -H "Content-Type: application/json"\
  -d '{"stream_url": ["https://s3-eu-west-1.amazonaws.com/labio-bin/audio/welcome_to_nexmo.mp3"]}'
