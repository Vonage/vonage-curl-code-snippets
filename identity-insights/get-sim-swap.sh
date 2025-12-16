#!/usr/bin/env bash

source "../config.sh"
source "../jwt.sh"

curl -X POST https://api-eu.vonage.com/v0.1/identity-insights \
    -H "Authorization: Bearer $JWT" \
    -H "Content-Type: application/json" \
    -d $'{
     "phone_number": "'$INSIGHT_NUMBER'",
     "purpose": "FraudPreventionAndDetection",
     "insights": {
        "sim_swap": {
          "period" : '$INSIGHT_SIM_SWAP_PERIOD'
        }
      }
  }'
