#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST https://api-eu.vonage.com/oauth2/bc-authorize \
  --header "Authorization: Bearer $JWT" \
  --header "Content-Type: application/x-www-form-urlencoded" \
  --data-urlencode "login_hint=$VNA_PHONE_NUMBER" \
  --data-urlencode "scope=$VNA_SCOPE"
