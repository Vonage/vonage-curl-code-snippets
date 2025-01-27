#!/usr/bin/env bash
source '../config.sh'

curl -X POST https://rest.nexmo.com/sms/json \
  -d "from=${SMS_SENDER_ID}" \
  -d "to=${SMS_TO_NUMBER}" \
  -d 'text=A text message sent using the Vonage SMS API' \
  -d "api_key=${VONAGE_API_KEY}" \
  -d "api_secret=${VONAGE_API_SECRET}"
