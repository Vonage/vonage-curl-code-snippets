source "../../config.sh"
source "../../jwt.sh"

curl -X POST "https://api.nexmo.com/beta/chatapp-accounts/messenger" \
  -H 'Authorization: Bearer '$JWT \
  -H 'Content-Type: application/json' \
  -d $'{
      "external_id": "'$EXTERNAL_ACCOUNT_EXTERNAL_ID'",
      "access_token": "'$MESSENGER_ACCESS_TOKEN'"
  }'