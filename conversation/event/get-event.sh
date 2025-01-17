#!/bin/bash

source "../../config.sh"
source "../../jwt.sh"

curl "https://api.nexmo.com/v1/conversations/$CONV_ID/events/$CONV_EVENT_ID" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json'




