#!/usr/bin/env bash

source "../../config.sh"

SCOPE='openid dpv:FraudPreventionAndDetection#check-sim-swap'
source "../camara-auth/backend.sh"


curl -X POST https://api-eu.vonage.com/camara/sim-swap/v040/check \
  -H 'Authorization: Bearer '$ACCESS_TOKEN\
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
          "phoneNumber": "'$PHONE_NUMBER'",
          "maxAge": "'$MAX_AGE'"
    }'
