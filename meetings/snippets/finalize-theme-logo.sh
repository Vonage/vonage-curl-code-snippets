#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl -X PUT "https://api-eu.vonage.com/meetings/themes/"$THEME_ID"/finalizeLogos"" \
  -H "Authorization: Bearer "$JWT \
  -H "Content-Type: application/json" \
  -d '{
     "keys": [
          "logo-key1",
          "logo-key2"
       ]
   }'