#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST "${MESSAGES_API_URL}" \ 
  -H "Authorization: Bearer "$JWT\ 
  -H 'Content-Type: application/json' \ 
  -H 'Accept: application/json' \ 
  -d $'{ 
    "to": "'${MESSAGES_TO_NUMBER}'", 
    "from": "'${WHATSAPP_SENDER_ID}'", 
    "channel": "whatsapp", 
    "message_type": "custom", 
    "custom": { 
      "type": "template", 
      "template": { 
        "name": "'${WHATSAPP_TEMPLATE_NAME}'", 
        "language": { 
          "policy": "deterministic", 
          "code": "en" 
        }, 
        "components": [ 
          { 
            "type": "body", 
            "parameters": [ 
              { 
                "type": "text", 
                "parameter_name": "customer_name", 
                "text": "Joe Bloggs" 
              }, 
              { 
                "type": "text", 
                "parameter_name": "order_number", 
                "text": "AB123456" 
              }, 
            ] 
          } 
        ] 
      }
    }
  }' 
