#!/usr/bin/env bash
source '../config.sh'

curl -X POST https://rest.nexmo.com/sms/json \
  -d "from=${SMS_SENDER_ID}" \
  -d "to=${SMS_TO_NUMBER}" \
  -d 'text=こんにちは世界' \
  -d 'type=unicode' \
  -d "api_key=${VONAGE_API_KEY}" \
  -d "api_secret=${VONAGE_API_SECRET}"

