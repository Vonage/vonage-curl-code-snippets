#!/bin/bash

source "../../config.sh"
source "../../jwt.sh"


curl -X "DELETE" "https://api.nexmo.com/v0.3/legs/$LEG_ID" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json'




