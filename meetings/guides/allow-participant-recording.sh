#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"
  
curl -X POST 'https://api-eu.vonage.com/meetings/rooms' \
 -H 'Authorization: Bearer $JWT' \
 -H 'content-type: application/json' \
 -d '{
 "display_name":"New Meeting Room",
  "available_features": {
      "is_recording_available": true
    }
  }'
