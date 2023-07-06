#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl -X POST 'https://api-eu.vonage.com/meetings/rooms' \
  -H 'Authorization: Bearer' $JWT \
  -H 'Content-Type: application/json' \
  -d '{
      "display_name":"New Meeting Room",
      "type":"long_term",
      "expires_at":"$EXPIRY_DATE",
      "recording_options": {
          "auto_record": true,
          "record_only_owner": true
      }
  }'