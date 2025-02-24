#!/usr/bin/env bash

source "../../config.sh"

curl -X POST https://api-eu.vonage.com/camara/sim-swap/v040/check \
  --header "Authorization: Bearer $VNA_ACCESS_TOKEN" \
  --header "Content-Type: application/json" \
  --data $'{
        "phoneNumber": "'$VNA_PHONE_NUMBER'",
        "maxAge": '$SIMSWAP_MAX_AGE'
}'
