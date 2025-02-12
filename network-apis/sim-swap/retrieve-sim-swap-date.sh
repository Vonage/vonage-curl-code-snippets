#!/usr/bin/env bash

source "../../config.sh"

curl -X POST https://api-eu.vonage.com/camara/sim-swap/v040/retrieve-date \
  --header "Authorization: Bearer $VNA_ACCESS_TOKEN" \
  --header "Content-Type: application/json" \
  --data '{ "phoneNumber": "'$VNA_PHONE_NUMBER'" }'
