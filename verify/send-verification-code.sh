#!/usr/bin/env bash
source "../config.sh"

curl -X GET -G "https://api.nexmo.com/verify/json" \
  -d "api_key=$NEXMO_API_KEY" \
  -d "api_secret=$NEXMO_API_SECRET" \
  -d "number=$TO_NUMBER" \
  -d "brand=Your%20MyApp%20ID%20is%20"