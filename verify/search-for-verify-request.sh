#!/usr/bin/env bash
source "../config.sh"

curl \
  -u "${VONAGE_API_KEY}:${VONAGE_API_SECRET}" \
  "https://api.nexmo.com/verify/search/json?request_id=$VERIFY_REQUEST_ID"
