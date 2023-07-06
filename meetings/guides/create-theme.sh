#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl -X POST 'https://api-eu.vonage.com/meetings/themes' \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer' $JWT \
-d '{
    "main_color": "#ff6500",
    "brand_text": "Orange",
    "theme_name": "orange-room", 
}'