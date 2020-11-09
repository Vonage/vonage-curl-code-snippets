#!/usr/bin/env bash

source "../config.sh"

curl -X POST \
  "https://rest.nexmo.com/number/cancel?api_key=$VONAGE_API_KEY&api_secret=$VONAGE_API_SECRET" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -d "country=$COUNTRY_CODE&msisdn=$VONAGE_NUMBER"