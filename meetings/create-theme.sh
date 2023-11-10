#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl -X POST https://api-eu.vonage.com/meetings/themes \
  -H "Authorization: Bearer $JWT" \
  -H "Content-Type: application/json" \
  -d '{
    "main_color": "'$MAIN_COLOR'",
    "brand_text": "'$BRAND_TEXT'"
   }'