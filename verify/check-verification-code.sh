#!/usr/bin/env bash
source "../config.sh"

curl -X GET "https://api.nexmo.com/verify/check/json?&api_key=$VONAGE_API_KEY&api_secret=$VONAGE_API_SECRET&request_id=$REQUEST_ID&code=$CODE"