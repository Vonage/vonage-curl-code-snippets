#!/usr/bin/env bash
source "../../config.sh"

curl -X "POST" "https://api-eu.vonage.com/v1/10dlc/brands" \
  -H 'Authorization: Bearer '$JWT\
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d '{ 
  "account_id": "$ACCOUNT_ID",
  "entity_type": "$ENTITY_TYPE",
  "display_name": "$BRAND_DISPLAY_NAME",
  "company_name": "$COMPANY_NAME",
  "ein": "$EIN",
  "phone": "$PHONE",
  "street": "$STREET",
  "city": "$CITY",
  "state": "$STATE",
  "postal_code": "$POSTAL_CODE",
  "country": "$COUNTRY",
  "email": "$EMAIL", 
  "website": "$WEBSITE"
}'
