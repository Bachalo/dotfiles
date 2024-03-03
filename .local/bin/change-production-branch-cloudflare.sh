#!/bin/bash

function has_param() {
    local terms="$1"
    shift

    for term in $terms; do
        for arg; do
            if [[ $arg == "$term" ]]; then
                echo "yes"
            fi
        done
    done
}

if [ "$#" -ne 3 ] || [ -n $(has_param "-h --help" "$@") ] || [ -z "${CLOUDFLARE_TOKEN}" ]; then
    echo ""
    echo "BEWARE: Needs to have **CLOUDFLARE_TOKEN** to be set." 
    echo "Usage: <account-id> <project-name> <new-production-branch>"
    exit 1
fi

 curl --request PATCH --url https://api.cloudflare.com/client/v4/accounts/$1/pages/projects/$2 --header 'Content-Type: application/json' --header 'Authorization: Bearer $CLOUDFLARE_TOKEN' --data '{ "production_branch": "$3" }'
