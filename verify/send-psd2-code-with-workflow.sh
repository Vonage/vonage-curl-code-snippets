#!/usr/bin/env bash
source "../config.sh"

curl -X POST "https://api.nexmo.com/verify/psd2/json" -d api_key=$VONAGE_API_KEY -d api_secret=$VONAGE_API_SECRET -d number=$VERIFY_NUMBER -d payee="$VERIFY_PAYEE_NAME" -d amount=$VERIFY_AMOUNT -d workflow_id=$VERIFY_WORKFLOW_ID
