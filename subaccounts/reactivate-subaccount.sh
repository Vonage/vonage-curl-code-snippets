#!/usr/bin/env bash

source "../config.sh"

curl -X PATCH -u $API_KEY:$API_SECRET https://api.nexmo.com/accounts/$API_KEY/subaccounts/$SUBACCOUNT_KEY  \
     -H "Content-Type: application/json"  \
     -d $'{"suspended":FALSE}'
