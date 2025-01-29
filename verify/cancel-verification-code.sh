#!/usr/bin/env bash
source "../config.sh"

curl GET "https://api.nexmo.com/verify/control/json?api_key=$VONAGE_API_KEY&api_secret=$VONAGE_API_SECRET&request_id=$VERIFY_REQUEST_ID&cmd=cancel"
