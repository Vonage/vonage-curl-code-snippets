#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl -X GET 'https://api-eu.vonage.com/meetings/themes/e8b1d80b-8f78-4578-94f2-328596e01387/rooms' \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer $JWT'