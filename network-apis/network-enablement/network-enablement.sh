#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST https://api-eu.vonage.com/v0.1/network-enablement \
  --header "Authorization: Bearer $JWT" \
  --header "Content-Type: application/json" \
  --data $'{
    "phone_number": "'$VNA_PHONE_NUMBER'",
    "scopes": ["'$VNA_SCOPE'"],
    "state" : "'$VNA_STATE'"
}'
