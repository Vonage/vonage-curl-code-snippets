source "../../config.sh"
source "../../jwt.sh"

curl -X PATCH "https://api.nexmo.com/beta/chatapp-accounts/messenger/$EXTERNAL_ACCOUNT_EXTERNAL_ID" \
  -H 'Authorization: Bearer '$JWT \
  -H 'Content-Type: application/json' \
  -d $'{
      "name": "some_new_name",
      "access_token": "'$MESSENGER_ACCESS_TOKEN'"
  }'