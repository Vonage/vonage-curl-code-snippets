#!/bin/bash

source "../../config.sh"
source "../../jwt.sh"

curl "https://api.nexmo.com/v0.2/conversations/$CONVERSATION_ID/events" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json'




