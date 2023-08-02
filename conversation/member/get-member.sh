#!/bin/bash

source "../../config.sh"
source "../../jwt.sh"

curl "https://api.nexmo.com/v0.3/conversations/$CONVERSATION_ID/members/$MEMBER_ID" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json'






