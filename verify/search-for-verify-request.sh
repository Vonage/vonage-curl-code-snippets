#!/usr/bin/env bash
source "../config.sh"

curl -X GET "https://api.nexmo.com/verify/search/json?&request_id=$VERIFY_REQUEST_ID"
