#!/usr/bin/env bash
source "../../config.sh"

curl -X "POST" "https://api-eu.vonage.com/v1/10dlc/brands/$BRAND_ID/campaigns" \
  -H 'Authorization: Bearer '$JWT\
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d '{ 
  "account_id": "$ACCOUNT_ID",
  "usecase": "$CAMPAIGN_USECASE",
  "description": "$CAMPAIGN_DESCRIPTION"
}'
