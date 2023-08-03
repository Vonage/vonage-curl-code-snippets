#!/bin/bash

source "../../config.sh"
source "../../jwt.sh"

curl "https://api.nexmo.com/v0.3/legs" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json'




