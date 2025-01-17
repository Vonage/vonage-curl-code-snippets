#!/usr/bin/env bash
source "../config.sh"

curl -X GET "https://api.nexmo.com/verify/control/json?&request_id=$VERIFY_REQUEST_ID&cmd=cancel"
