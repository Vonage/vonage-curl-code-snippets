#!/usr/bin/env bash

source "../config.sh"
source "../jwt.sh"

curl -X POST https://api-eu.vonage.com/v0.1/identity-insights \
    -H "Authorization: Bearer $JWT" \
    -H "Content-Type: application/json" \
    -d $'{
     "phone_number": "'$INSIGHT_NUMBER'",
     "insights": {
        "current_carrier": {}
      }
  }'
