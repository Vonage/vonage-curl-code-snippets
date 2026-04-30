#!/usr/bin/env bash
source "../config.sh"

curl GET \
  -u "${VONAGE_API_KEY}:${VONAGE_API_SECRET}" \
  "https://api.nexmo.com/verify/json?number=$VERIFY_NUMBER&brand=AcmeInc&workflow_id=$VERIFY_WORKFLOW_ID"
