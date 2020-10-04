#!/usr/bin/env bash
source "../../config.sh"
source "../../jwt.sh"

curl -X POST https://api.nexmo.com/v1/calls/$UUID \
  -H "Authorization: Bearer "$JWT \
  -H "Content-Type: application/json"\
  -d '{"action": "transfer",
      "destination": {"type": "ncco", "ncco": ["action":"talk", "text":"This is a transfer action using an inline NCCO"]}}'