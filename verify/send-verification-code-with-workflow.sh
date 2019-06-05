#!/usr/bin/env bash
source "../config.sh"

# Try workflow_id 4 for SMS followed by SMS
curl -X GET "https://api.nexmo.com/verify/json?&api_key=$NEXMO_API_KEY&api_secret=$NEXMO_API_SECRET&number=$RECIPIENT_NUMBER&brand=AcmeInc&workflow_id=4"
