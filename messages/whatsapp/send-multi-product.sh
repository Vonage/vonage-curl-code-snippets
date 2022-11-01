#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST $MESSAGES_API_URL \
     -H 'Authorization: Bearer' $JWT \
     -H 'Content-Type: application/json' \
     -d '{
  "to": "'$TO_NUMBER'",
  "from": "'$WHATSAPP_NUMBER'",
  "channel": "whatsapp",
  "message_type": "custom",
  "custom": {
    "type": "interactive",
    "interactive": {
      "type": "product_list",
      "header":{
        "type": "text",
        "text": "Out top products"
      },
      "body": {
        "text": "Check out these great products"
      },
      "footer": {
        "text": "Sale now on!"
      },
      "action":{
        "catalog_id": "'$CATALOG_ID'",
        "sections": [
          {
            "title": "Cool products",             
            "product_items": [
              { "product_retailer_id": "'$PRODUCT_ID'" },
              { "product_retailer_id": "'$PRODUCT_ID'" },
            ]
          },
          {
            "title": "Awesome products",
            "product_items": [
              { "product_retailer_id": "'$PRODUCT_ID'" }
            ]
          },
        ]
      }
    }
  }'
