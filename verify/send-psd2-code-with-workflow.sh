#!/usr/bin/env bash
source "../config.sh"

curl -X POST "https://api.nexmo.com/verify/psd2/json" -d api_key=$NEXMO_API_KEY -d api_secret=$NEXMO_API_SECRET -d number=$RECIPIENT_NUMBER -d payee="$PAYEE" -d amount=$AMOUNT -d workflow_id=$WORKFLOW_ID
