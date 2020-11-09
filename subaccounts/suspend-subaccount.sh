#!/usr/bin/env bash

source "../config.sh"

curl -X PATCH -u $VONAGE_API_KEY:$VONAGE_API_SECRET https://api.nexmo.com/accounts/$VONAGE_API_KEY/subaccounts/$SUBACCOUNT_KEY  \
     -H "Content-Type: application/json"  \
     -d $'{"suspended":true}'
