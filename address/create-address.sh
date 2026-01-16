#!/bin/bash

source "../config.sh"

curl -X "POST" "https://api.nexmo.com/v1/addresses" \
     -H 'Content-Type: application/json' \
     -u "$VONAGE_API_KEY:$VONAGE_API_SECRET" \
     -d $'{
           "address_name": "myaddress",
           "address_line1": "1 REGAL CT",
           "address_line2": "Merchant House 205",
           "city": "New York",
           "region": "NJ",
           "type": "emergency",
           "address_location_type": "business",
           "postal_code": "10002",
           "country": "US"
     }'