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
      "type": "product",
      "body": {
        "text": "Check out this cool product"
      },
      "footer": {
        "text": "Sale now on!"
      },
      "action": {
        "catalog_id": "'$CATALOG_ID'",
        "product_retailer_id": "'$PRODUCT_ID'"
      }
    }
  }
}'