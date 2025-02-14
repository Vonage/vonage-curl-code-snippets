#!/usr/bin/env bash
source "../config.sh"

curl "https://rest.nexmo.com/account/get-balance" -u "$VONAGE_API_KEY:$VONAGE_API_SECRET"
