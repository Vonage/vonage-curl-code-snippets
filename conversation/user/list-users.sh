#!/bin/bash

source "../../config.sh"
source "../../jwt.sh"

curl "https://api.nexmo.com/beta2/users" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json'



