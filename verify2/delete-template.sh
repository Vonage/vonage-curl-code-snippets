#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl -X DELETE \
  --url https://api.nexmo.com/v2/verify/$TEMPLATE_ID \
  -H "Authorization: Bearer $JWT"\
  -H 'Content-Type: application/json' \
  -d $'{
   ""
}'