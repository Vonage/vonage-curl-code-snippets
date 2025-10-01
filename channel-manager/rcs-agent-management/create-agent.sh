#!/usr/bin/env bash

source "../../config.sh"

curl -X POST https://api.nexmo.com/v1/channel-manager/rcs/agents \
  -u "${VONAGE_API_KEY}:${VONAGE_API_SECRET}" \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
			"basic_info": {
				"display_name": "'${CHANNEL_MANAGER_RCS_AGENT_DISPLAY_NAME}'",
				"sender_id": "'${CHANNEL_MANAGER_RCS_AGENT_SENDER_ID}'",
				"hosting_region": "'${CHANNEL_MANAGER_RCS_AGENT_HOSTING_REGION}'",
				"agent_purpose": "'${CHANNEL_MANAGER_RCS_AGENT_PURPOSE}'",
				"billing_category": "'${CHANNEL_MANAGER_RCS_AGENT_BILLING_CATEGORY}'",
				"brand_id": "'${CHANNEL_MANAGER_RCS_BRAND_ID}'"
			},
			"visual_design": {
				"tagline": "'${CHANNEL_MANAGER_RCS_AGENT_TAGLINE}'",
				"brand_color": "'${CHANNEL_MANAGER_RCS_AGENT_BRAND_COLOR}'",
				"phone": [
					{
						"number": "'${CHANNEL_MANAGER_RCS_AGENT_PHONE_NUMBER}'"
					}
				],
				"email": [
					{
						"address": "'${CHANNEL_MANAGER_RCS_AGENT_EMAIL_ADDRESS}'"
					}
				],
				"website": [
					{
						"url": "'${CHANNEL_MANAGER_RCS_AGENT_WEBSITE_ADDRESS}'"
					}
				]
			},
			"application_settings": {
				"application_id": "'${VONAGE_APPLICATION_ID}'"
			}
		}'