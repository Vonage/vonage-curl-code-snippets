#!/usr/bin/env bash

source "../config.sh"

curl -X POST -u $VONAGE_API_KEY:$VONAGE_API_SECRET https://api.nexmo.com/accounts/$VONAGE_API_KEY/subaccounts  \
     -H "Content-Type: application/json"  \
     -d $'{"name":"'$NEW_SUBACCOUNT_NAME'", "secret":"'$NEW_SUBACCOUNT_SECRET'"}'
