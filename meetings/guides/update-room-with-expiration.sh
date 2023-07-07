#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl -X PATCH 'https://api-eu.vonage.com/meetings/rooms/9f6fe8ae-3458-4a72-b532-8276d5533e97' \
-H 'Authorization: Bearer' $JWT \
-H 'Content-Type: application/json' \
-d '{ 
      "update_details": { 
        "expires_at": "2022-11-11T16:00:00.000Z" 
      } 
    }'