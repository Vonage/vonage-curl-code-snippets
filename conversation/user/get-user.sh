#!/bin/bash

source "../../config.sh"
source "../../jwt.sh"

curl "https://api.nexmo.com/v1/users/$USER_ID" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json'



