#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl -X POST 'https://api-eu.vonage.com/meetings/rooms' \
-H 'Authorization: Bearer $JWT' \
-H 'Content-Type: application/json' \
-d '{
    "display_name":"New Meeting Room",
    "type":"long_term",
    "expires_at":"$EXPIRY_DATE",
    "theme_id": "e8b1d80b-8f78-4578-94f2-328596e01387"
}'