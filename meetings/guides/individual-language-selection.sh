﻿#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl -X POST 'https://api-eu.vonage.com/meetings/rooms' \
   -H 'Authorization: Bearer' $JWT \
   -H 'Content-Type: application/json' \
   -d '{
     "display_name": "New Meeting Room",
     "available_features": {
          "is_locale_switcher_available": true
          }
    }'