#!/bin/bash

source "../config.sh"

curl -X "PATCH" "https://api.nexmo.com/v1/emergency/numbers/$EMERGENCY_NUMBER" \
     -H 'Content-Type: application/json' \
     -u "$VONAGE_API_KEY:$VONAGE_API_SECRET" \
     -d $'{
        {
           "address": {
              "id": "c49f3586-9b3b-458b-89fc-3c8beb58865c"
           },
           "contact_name": "John Smith"
        }
     }'