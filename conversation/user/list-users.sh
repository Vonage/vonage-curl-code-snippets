#!/bin/bash

source "../config.sh"

curl "https://api.nexmo.com/beta/users" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json'



