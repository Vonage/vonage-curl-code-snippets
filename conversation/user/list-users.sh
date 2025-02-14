#!/bin/bash

source "../../config.sh"
source "../../jwt.sh"

curl "https://api.nexmo.com/v1/users" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json'
