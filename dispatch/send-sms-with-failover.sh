#!/usr/bin/env bash

source "../config.sh"
source "../jwt.sh"

curl -X POST https://api.nexmo.com/v0.1/dispatch \
  -H 'Authorization: Bearer '$JWT\
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
    "template":"failover",
    "workflow": [
      {
        "from": { "type": "sms", "number": '$FROM_NUMBER' },
        "to": { "type": "sms", "number": '$TO_NUMBER_1' },
        "message": {
          "content": {
            "type": "text",
            "text": "Dispatch API: Message 1"
          }
        },
        "failover":{
          "expiry_time": 60,
          "condition_status": "read"
        }
      },
      {
        "from": {"type": "sms", "number": '$FROM_NUMBER'},
        "to": { "type": "sms", "number": '$TO_NUMBER_2'},
        "message": {
          "content": {
            "type": "text",
            "text": "Dispatch API: Message 2"
          }
        }
      }
    ]
  }'
