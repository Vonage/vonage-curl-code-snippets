#!/bin/bash

source "../config.sh"

curl -X "DELETE" "https://api.nexmo.com/v1/addresses/$ADDRESS_ID" \
     -H 'Content-Type: application/json' \
     -u "$VONAGE_API_KEY:$VONAGE_API_SECRET"