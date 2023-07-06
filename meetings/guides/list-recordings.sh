#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl -X GET 'https://api-eu.vonage.com/meetings/sessions/2_MX40NjMwODczMn5-MTU3NTgyODEwNzQ2MH5OZDJrVmdBRUNDbG5MUzNqNX20yQ1Z-fg/recordings'
-H 'Authorization: Bearer $JWT'
-H 'Content-Type: application/json'