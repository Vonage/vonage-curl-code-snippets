#!/usr/bin/env bash
source "../../config.sh"

curl -X "POST" "https://api-eu.vonage.com/v1/10dlc/brands/$BRAND_ID/campaigns/$CAMPAIGN_ID/numbers" \
  -H 'Authorization: Bearer '$JWT\
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d '{ 
  "country": "US",
  "number": "$NUMBER"
}'
