#!/usr/bin/env bash

source "../../config.sh"
source "../camara-auth/frontend.sh"


curl -X POST https://api-eu.vonage.com/camara/number-verification/v031/verify \
  -H 'Authorization: Bearer '$ACCESS_TOKEN\
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
          "phoneNumber": "'$PHONE_NUMBER'",
          "maxAge": "'$MAX_AGE'"
    }'
