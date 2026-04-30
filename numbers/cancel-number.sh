#!/usr/bin/env bash

source "../config.sh"

curl -X POST \
  -u "${VONAGE_API_KEY}:${VONAGE_API_SECRET}" \
  "https://rest.nexmo.com/number/cancel" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -d "country=$COUNTRY_CODE&msisdn=$VONAGE_NUMBER"