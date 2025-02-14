#!/bin/bash

source "../../config.sh"
source "../../jwt.sh"

curl "https://api.nexmo.com/v1/users/$CONV_USER_ID/conversations" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json'