source "../../config.sh"
source "../../jwt.sh"

curl -X GET "https://api.nexmo.com/beta/chatapp-accounts/messenger/$EXTERNAL_ACCOUNT_EXTERNAL_ID" \
  -H 'Authorization: Bearer '$JWT 