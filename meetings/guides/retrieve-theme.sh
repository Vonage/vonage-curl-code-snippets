#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl -X GET 'https://api-eu.vonage.com/meetings/themes/ef2b46f3-8ebb-437e-a671-272e4990fbc8' \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer' $JWT