#!/bin/bash

source "../../config.sh"

## Get Audit Events
# Fetches specified audit event
curl "https://api.nexmo.com/beta/audit/events/EVENT_UUID" \
     -u 'NEXMO_API_KEY:NEXMO_API_SECRET'

