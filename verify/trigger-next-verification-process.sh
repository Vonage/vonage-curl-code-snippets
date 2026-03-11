#!/usr/bin/env bash
source "../config.sh"

curl GET -u "${VONAGE_API_KEY}:${VONAGE_API_SECRET}" "https://api.nexmo.com/verify/control/json?request_id=$VERIFY_REQUEST_ID&cmd=trigger_next_event"
