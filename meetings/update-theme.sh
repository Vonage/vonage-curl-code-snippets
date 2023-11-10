#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl -X PATCH "https://api-eu.vonage.com/meetings/themes/"$THEME_ID \
  -H "Authorization: Bearer $JWT" \
  -H "Content-Type: application/json" \
  -d '{
       "update_details": {
          "main_color": "'$MAIN_COLOR'",
          "brand_text": "'$BRAND_TEXT'"
       }
  }'