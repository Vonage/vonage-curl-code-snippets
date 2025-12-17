#!/usr/bin/env bash

source "../config.sh"
source "../jwt.sh"

payload=$(cat <<EOF
{
 "phone_number": "$INSIGHT_NUMBER",
 "purpose": "FraudPreventionAndDetection",
 "insights": {
    "subscriber_match": {
       "id_document": "$INSIGHT_SUBSCRIBER_ID_DOCUMENT",
       "given_name": "$INSIGHT_SUBSCRIBER_GIVEN_NAME",
       "family_name": "$INSIGHT_SUBSCRIBER_FAMILY_NAME",
       "street_name": "$INSIGHT_SUBSCRIBER_STREET_NAME",
       "street_number": "$INSIGHT_SUBSCRIBER_STREET_NUMBER",
       "postal_code": "$INSIGHT_SUBSCRIBER_POSTAL_CODE",
       "locality": "$INSIGHT_SUBSCRIBER_LOCALITY",
       "region": "$INSIGHT_SUBSCRIBER_REGION",
       "country": "$INSIGHT_SUBSCRIBER_COUNTRY",
       "house_number_extension": "$INSIGHT_SUBSCRIBER_HOUSE_NUMBER_EXT",
       "birthdate": "$INSIGHT_SUBSCRIBER_BIRTHDATE"
    }
  }
}
EOF
)

curl -X POST https://api-eu.vonage.com/v0.1/identity-insights \
    -H "Authorization: Bearer $JWT" \
    -H "Content-Type: application/json" \
    --data-raw "$payload"
