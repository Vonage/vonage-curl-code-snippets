#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"
  
curl --X POST \
  --url https://api-eu.vonage.com/meetings/rooms \
  -H "Authorization: Bearer "$JWT \
  -H "Content-Type: application/json" \
  -d '{
      "display_name":"'$ROOM_DISPLAY_NAME'"
   }'