#!/usr/bin/env bash
source "../../config.sh"

curl "https://api.nexmo.com/accounts/$ACCOUNT_ID/secrets/$SECRET_ID" \
    -u "$VONAGE_API_KEY:$VONAGE_API_SECRET"

