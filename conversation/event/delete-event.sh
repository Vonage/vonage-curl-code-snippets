#!/bin/bash

source "../config.sh"

curl -X "DELETE" "https://api.nexmo.com/beta/conversations/CON-0bccb43e-f7e1-4b4c-889e-f7d3776ac0c3/events/2" \
     -H 'Authorization: Bearer '$JWT\
     -H 'Content-Type: application/json'




