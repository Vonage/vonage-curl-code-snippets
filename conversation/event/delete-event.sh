#!/bin/bash

source "../../config.sh"
source "../../jwt.sh"

curl -X "DELETE" "https://api.nexmo.com/v1/conversations/$CONVERSATION_ID/events/$EVENT_ID" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json'




