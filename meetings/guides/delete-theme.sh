#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl -X DELETE 'https://api-eu.vonage.com/meetings/themes/e8b1d80b-8f78-4578-94f2-328596e01387?force=true'