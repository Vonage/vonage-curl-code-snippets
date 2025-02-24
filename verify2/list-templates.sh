#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl GET "https://api.nexmo.com/v2/verify/templates" \
  -H "Authorization: Bearer $JWT"\
  -H 'Content-Type: application/json'