curl -X "POST" "https://rest.nexmo.com/sms/json" \
  -d "from=FROM" \
  -d "to=TO_NUMBER" \
  -d "text=こんにちは世界" \
  -d "type=unicode" \
  -d "api_key=NEXMO_API_KEY" \
  -d "api_secret=NEXMO_API_SECRET"
