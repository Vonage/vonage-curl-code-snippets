#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl --X PATCH \
  --url "https://api-eu.vonage.com/meetings/rooms/"$ROOM_ID \
  -H "Authorization: Bearer "$JWT \
  -H "Content-Type: application/json" \
  -d '{
       "update_details": {
          "theme_id": "'$THEME_ID'"
       }
  }'