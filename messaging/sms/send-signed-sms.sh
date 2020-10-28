#!/usr/bin/env bash
source "../../config.sh"

curl -X "POST" "https://rest.nexmo.com/sms/json" \
  -d "from=$FROM_NUMBER" \
  -d "text=A text message sent using the Nexmo SMS API" \
  -d "to=$TO_NUMBER" \
  -d "api_key=$NEXMO_API_KEY" \
  -d "sig=$NEXMO_SIGNATURE_SECRET"
