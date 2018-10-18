#!/bin/bash

source "../config.sh"

curl -X "DELETE" "https://api.nexmo.com/beta/legs/$LEG_ID" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json'




