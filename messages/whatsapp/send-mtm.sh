#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST \
  $API_ENDPOINT \
  -u $NEXMO_API_KEY:$NEXMO_API_SECRET \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d '{
   "from":{
      "type":"whatsapp",
      "number":"'$WHATSAPP_NUMBER'"
   },
   "to":{
      "type":"whatsapp",
      "number":"'$TO_NUMBER'"
   },
   "message":{
      "content":{
         "type":"template",
         "template":{
            "name": "'$WHATSAPP_TEMPLATE_NAMESPACE':'$WHATSAPP_TEMPLATE_NAME'",
            "parameters":[
               {
                  "default":"Nexmo Verification"
               },
               {
                  "default":"64873"
               },
               {
                  "default":"10"
               }
            ]
         }
      },
      "whatsapp": {
        "policy": "deterministic",
      	"locale": "en-GB"
      }
   }
}'
