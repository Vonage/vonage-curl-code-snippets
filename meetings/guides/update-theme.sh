#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl -X PATCH 'https://api-eu.vonage.com/meetings/themes/86da462e-fac4-4f46-87ed-63eafc81be48' \
-H 'Authorization: Bearer '$JWT \
-d '{
  "update_details": {
      "theme_name": "Theme1",
      "main_color": "#12f64e",
      "brand_text": "Brand",
      "short_company_url": "short-url"
   }
}'