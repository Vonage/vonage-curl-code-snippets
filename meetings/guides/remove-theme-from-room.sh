#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl -X PATCH 'https://api-eu.vonage.com/meetings/rooms/{ROOM_ID}' \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer $JWT' \
-d '{
    "update_details": {
        "theme_id": "null"
        }   
}'