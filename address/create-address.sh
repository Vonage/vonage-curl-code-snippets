#!/bin/bash

source "../config.sh"

curl -X "POST" "https://api.nexmo.com/v1/addresses" \
     -H 'Content-Type: application/json' \
     -u "$VONAGE_API_KEY:$VONAGE_API_SECRET" \
     -d $'{
           "address_name": "'$ADDRESS_NAME'",
           "address_line1": "'$ADDRESS_LINE_1'",
           "address_line2": "'$ADDRESS_LINE_2'",
           "city": "'$ADDRESS_CITY'",
           "region": "'$ADDRESS_REGION'",
           "type": "'$ADDRESS_TYPE'",
           "address_location_type": "'$ADDRESS_LOCATION_TYPE'",
           "postal_code": "'$ADDRESS_POSTAL_CODE'",
           "country": "'$ADDRESS_COUNTRY'"
     }'