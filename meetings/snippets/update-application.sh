#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl -X PATCH https://api-eu.vonage.com/meetings/applications \
  -H "Authorization: Bearer "$JWT \
  -H "Content-Type: application/json" \
  -d '{
       "update_details": {
          "default_theme_id": "'$THEME_ID'"
       }
  }'