#!/usr/bin/env bash
source "../../config.sh"

curl -X "POST" "https://rest.nexmo.com/sms/json" \
  -d "from=$VONAGE_BRAND_NAME" \
  -d "text=A text message sent using the Vonage SMS API" \
  -d "to=$TO_NUMBER" \
  -d "api_key=$Master(0f75e2f7" \
  -d "api_secret=$aBh7kyOa4QmYSKbx"
