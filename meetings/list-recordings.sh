#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl -X GET "https://api-eu.vonage.com/meetings/sessions/"$SESSION_ID"/recordings" \
  -H "Authorization: Bearer $JWT"