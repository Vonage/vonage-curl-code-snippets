#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST "${MESSAGES_API_URL}" \
  -H "Authorization: Bearer "$JWT\
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
    "to": "'${MESSAGES_TO_NUMBER}'",
    "from": "'${RCS_SENDER_ID}'",
    "channel": "rcs",
    "message_type": "text",
    "text": "Product Launch: Save the date!",
    "suggestions": [
      {
        "type": "create_calendar_event",
        "text": "Save to calendar",
        "postback_data": "postback_data_1234",
        "start_time": "2024-06-28T19:00:00Z",
        "end_time": "2024-06-28T20:00:00Z",
        "title": "Vonage API Product Launch",
        "description": "Event to demo new and exciting Vonage API product",
        "fallback_url": "https://www.google.com/calendar"
      }
    ]
  }'
