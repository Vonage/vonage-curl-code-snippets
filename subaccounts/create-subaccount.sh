#!/usr/bin/env bash

source "../config.sh"

curl -X POST -u $NEXMO_API_KEY:$NEXMO_API_SECRET https://api.nexmo.com/accounts/$NEXMO_API_KEY/subaccounts  \
     -H "Content-Type: application/json"  \
     -d $'{"name":"'$NEW_SUB_NAME'", "secret":"'$NEW_SUB_SECRET'"}'
