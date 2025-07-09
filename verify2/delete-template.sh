#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl -X DELETE "https://api.nexmo.com/v2/verify/$VERIFY_TEMPLATE_ID" \
  -H "Authorization: Bearer $JWT"\
  -H 'Content-Type: application/json'