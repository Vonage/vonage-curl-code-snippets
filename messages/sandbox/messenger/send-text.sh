curl -X POST $MESSAGES_SANDBOX_URL \
   -u $NEXMO_API_KEY:$NEXMO_API_SECRET \
   -H 'Content-Type: application/json' \
   -H 'Accept: application/json' \
   -d $'{
     "from": { "type": "messenger", "id": "'$FB_SANDBOX_ID'" },
     "to": { "type": "messenger", "id": "'$FB_RECIPIENT_ID'" },
     "message": {
                 "content": {
                 "type": "text",
                 "text": "Messenger message sent from Messages Sandbox"
     }
    }
 }'
