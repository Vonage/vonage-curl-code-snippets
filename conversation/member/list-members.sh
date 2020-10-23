#!/bin/bash

source "../../config.sh"
source "../../jwt.sh"

curl "https://api.nexmo.com/beta2/conversations/$CONVERSATION_ID/members" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json'



