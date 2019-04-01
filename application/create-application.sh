#!/bin/bash

source "../config.sh"

curl -X "POST" "https://api.nexmo.com/v2/applications" \
     -H 'Content-Type: application/json' \
     -u "$NEXMO_API_KEY:$NEXMO_API_SECRET" \
     -d $'{
  "name": "Code Snippets V2 Application"
}'
