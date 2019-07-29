#!/usr/bin/env bash

source "../config.sh"

echo $NEW_SUB_NAME
echo $NEW_SUB_SECRET

curl -X POST -u $API_KEY:$API_SECRET https://api.nexmo.com/accounts/$API_KEY/subaccounts  \
     -H "Content-Type: application/json"  \
     -d $'{"name":"$NEW_SUB_NAME", "secret":"$NEW_SUB_SECRET"}'
