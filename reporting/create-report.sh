#!/usr/bin/env bash

source "../config.sh"

curl -X "POST" "https://api.nexmo.com/v1/reports?api_key=$NEXMO_API_KEY&api_secret=$NEXMO_API_SECRET" \
  -H "Content-Type: application/json"\
  -d '{"product": "'$REPORT_PRODUCT'"}'
