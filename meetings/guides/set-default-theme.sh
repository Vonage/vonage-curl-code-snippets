#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl -X PATCH 'https://api-eu.vonage.com/meetings/applications' \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer $JWT' \
-d '{
  "update_details": {
    "default_theme_id": "e8b1d80b-8f78-4578-94f2-328596e01387"
  }
}'