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
      "type": "interactive",
      "interactive": {
        "type": "product_list",
        "header":{
          "type": "text",
          "text": "Our top products"
        },
        "body": {
          "text": "Check out these great products"
        },
        "footer": {
          "text": "Sale now on!"
        },
        "action":{
          "catalog_id": "'${WHATSAPP_CATALOG_ID}'",
          "sections": [
            {
              "title": "Cool products",
              "product_items": [
                { 
                  "product_retailer_id": "'${WHATSAPP_PRODUCT_ID_1}'"
                },
                { 
                  "product_retailer_id": "'${WHATSAPP_PRODUCT_ID_2}'"
                }
              ]
            },
            {
              "title": "Awesome products",
              "product_items": [
                { 
                  "product_retailer_id": "'${WHATSAPP_PRODUCT_ID_1}'"
                }
              ]
            }
          ]
        }
      }
    }
  }'
