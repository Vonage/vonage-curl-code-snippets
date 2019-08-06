#!/usr/bin/env bash

source "../config.sh"

curl -X PATCH -u $NEXMO_API_KEY:$NEXMO_API_SECRET https://api.nexmo.com/accounts/$NEXMO_API_KEY/subaccounts/$SUBACCOUNT_KEY  \
     -H "Content-Type: application/json"  \
     -d $'{"suspended":true}'
