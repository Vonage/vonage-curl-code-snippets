#!/usr/bin/env bash
source "../../config.sh"

curl -X POST "https://api.nexmo.com/accounts/$ACCOUNT_ID/secrets" \
     -H 'Content-Type: application/json' \
     -u "$VONAGE_API_KEY:$VONAGE_API_SECRET" \
     -d '{"secret":"'$ACCOUNT_SECRET_VALUE'"}'

