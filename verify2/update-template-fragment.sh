#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl -X PATCH \
  --url https://api.nexmo.com/v2/verify/templates/$VERIFY_TEMPLATE_ID/template_fragments/$VERIFY_TEMPLATE_FRAGMENT_ID \
  -H "Authorization: Bearer $JWT"\
  -H 'Content-Type: application/json' \
  -d $'{
	   "text": "The authentication code for your ${brand} is: ${code}"
  }'