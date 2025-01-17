#!/usr/bin/env bash
source "../config.sh"

curl -X POST "https://api.nexmo.com/verify/psd2/json" -d -d number=$VERIFY_NUMBER -d payee="$VERIFY_PAYEE_NAME" -d amount=$VERIFY_AMOUNT
