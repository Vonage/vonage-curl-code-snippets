#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl -X DELETE 'https://api-eu.vonage.com/meetings/recordings/9f6fe8ae-3458-4a72-b532-8276d5533e97'
-H 'Authorization: Bearer '$JWT