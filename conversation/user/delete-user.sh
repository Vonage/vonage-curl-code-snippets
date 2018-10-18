#!/bin/bash

source "../config.sh"

curl -X "DELETE" "https://api.nexmo.com/beta/users/$USER_ID" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json'


