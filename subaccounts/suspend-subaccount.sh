#!/usr/bin/env bash

source "../config.sh"

curl -X "PATCH" "https://api.nexmo.com/accounts/$VONAGE_API_KEY/subaccounts/$SUBACCOUNT_KEY" -u $VONAGE_API_KEY:$VONAGE_API_SECRET \
     -H "Content-Type: application/json"  \
     -d $'{"suspended":true}'
