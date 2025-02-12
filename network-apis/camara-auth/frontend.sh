#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST https://api-eu.vonage.com/oauth2/token \
  --header "Authorization: Bearer $JWT" \
  --header "Content-Type: application/x-www-form-urlencoded" \
  --data-urlencode "code=$AUTH_CODE" \
  --data-urlencode "redirect_uri=$REDIRECT_URI" \
  --data-urlencode "grant_type: authorization_code"
