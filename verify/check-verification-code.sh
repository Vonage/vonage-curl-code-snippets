#!/usr/bin/env bash
source "../config.sh"

curl -X GET "https://api.nexmo.com/verify/check/json?&request_id=$VERIFY_REQUEST_ID&code=$VERIFY_CODE"