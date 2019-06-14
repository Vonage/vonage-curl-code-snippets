#!/usr/bin/env bash
source "../../config.sh"

curl -X "POST" "https://rest.nexmo.com/sms/json" \
  -d "from=AcmeInc" \
  -d "type=binary" \
  -d "body=48656C6C6F21" \
  -d "udh=0" \
  -d "to=$TO_NUMBER" \
  -d "api_key=$NEXMO_API_KEY" \
  -d "api_secret=$NEXMO_API_SECRET"
