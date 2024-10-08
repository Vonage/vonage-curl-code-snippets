#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl -X GET \
  --url https://api.nexmo.com/v2/verify/templates/$TEMPLATE_ID/template_fragments/$TEMPLATE_FRAGMENT_ID \
  -H "Authorization: Bearer $JWT"\
  -H 'Content-Type: application/json'