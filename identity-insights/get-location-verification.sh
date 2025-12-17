#!/usr/bin/env bash

source "../config.sh"
source "../jwt.sh"

payload=$(cat <<EOF
{
  "phone_number": "$INSIGHT_NUMBER",
  "purpose": "FraudPreventionAndDetection",
  "insights": {
   "location_verification": {
     "location": {
       "type": "CIRCLE",
       "radius": "$INSIGHT_LOCATION_RADIUS",
       "center": {
          "latitude": "$INSIGHT_LOCATION_LAT",
          "longitude":"$INSIGHT_LOCATION_LONG"
        }
      }
    }
  }
}
EOF
)

curl -X POST https://api-eu.vonage.com/v0.1/identity-insights \
    -H "Authorization: Bearer $JWT" \
    -H "Content-Type: application/json" \
    --data-raw "$payload"
