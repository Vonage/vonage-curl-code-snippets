#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl GET "https://api.nexmo.com/v2/verify/templates/$VERIFY_TEMPLATE_ID" \
  -H "Authorization: Bearer $JWT"\
  -H 'Content-Type: application/json'

NOT WORKING