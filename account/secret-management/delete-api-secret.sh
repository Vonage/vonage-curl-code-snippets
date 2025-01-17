#!/usr/bin/env bash
source "../../config.sh"

curl -X DELETE "https://api.nexmo.com/accounts/$ACCOUNT_ID/secrets/$ACCOUNT_SECRET_ID" \
     -u "$VONAGE_API_KEY:$VONAGE_API_SECRET"
