#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl -X PATCH 'https://api-eu.vonage.com/meetings/rooms/9f6fe8ae-3458-4a72-b532-8276d5533e97' \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer '$JWT \
-d '{
    "update_details": {
        "theme_id": "null"
        }   
}'