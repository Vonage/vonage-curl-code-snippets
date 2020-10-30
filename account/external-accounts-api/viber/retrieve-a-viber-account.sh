source "../../config.sh"
source "../../jwt.sh"

curl -X GET "https://api.nexmo.com/beta/chatapp-accounts/viber_service_msg/$EXTERNAL_ACCOUNT_EXTERNAL_ID" \
  -H 'Authorization: Bearer '$JWT 