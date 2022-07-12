#!/bin/bash

source "../../config.sh"
source "../../jwt.sh"

curl "https://api.nexmo.com/v0.1/users/$USER_ID/conversations" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json'




