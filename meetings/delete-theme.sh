#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"
  
curl -X DELETE "https://api-eu.vonage.com/meetings/themes/"$THEME_ID \
  -H "Authorization: Bearer "$JWT