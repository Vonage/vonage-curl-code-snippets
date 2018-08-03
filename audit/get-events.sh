#!/bin/bash

source "../../config.sh"

## Get Audit Events
# Fetches all audit events
curl "https://api.nexmo.com/beta/audit/events" \
     -u 'NEXMO_API_KEY:NEXMO_API_SECRET'
