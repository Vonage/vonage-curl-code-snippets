#!/usr/bin/env bash
source "../../config.sh"

function jsonval {
    temp=`echo $json | sed 's/\\\\\//\//g' | sed 's/[{}]//g' | awk -v k="text" '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' | sed 's/\"\:\"/\|/g' | sed 's/[\,]/ /g' | sed 's/\"//g' | grep -w $prop`
    echo ${temp##*|}
}

json=`curl -k -d "grant_type=password&username=$VBC_USERNAME&password=$VBC_PASSWORD" \
        -d "&client_id=$VBC_CLIENT_ID&client_secret=$VBC_CLIENT_SECRET" \
        https://api.entva0.qa.vonagenetworks.net/token`

prop='access_token'
VBC_TOKEN=`jsonval`
