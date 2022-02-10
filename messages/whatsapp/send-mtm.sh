#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST $MESSAGES_API_URL \
     -H 'Authorization: Bearer' $JWT \
     -H 'Content-Type: application/json' \
     -d '{
   "to": "$TO_NUMBER",
   "from": "$WHATSAPP_NUMBER",
   "channel": "whatsapp",
   "message_type": "template",
   "whatsapp": {
     "policy": "deterministic",
     "locale": "en-GB"
   },
   "template":{
      "name": "'$WHATSAPP_TEMPLATE_NAMESPACE':'$WHATSAPP_TEMPLATE_NAME'",
      "parameters":[
         {
            "default":"Vonage Verification"
         },
         {
            "default":"64873"
         },
         {
            "default":"10"
         }
      ]
   }
}'
