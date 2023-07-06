#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl -X GET 'https://api-eu.vonage.com/meetings/recordings/:recording_id'
-H 'Authorization: Bearer $JWT' \
-H 'Content-Type: application/json'