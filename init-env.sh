#!/bin/bash

echo "init-env.sh@sh: v2.1, 20190321"
## Variables
# Write down the data required in .env file here for initiation.
ENVFILENAME=.env
ENVFILECONTENTS=(
    "## REGISTRY VARIABLES"
    "REGISTRY_STORE_PATH="
    "REGISTRY_USER="
    "REGISTRY_PASSWORD="
    "## DRONE VARIABLES"
    "DRONE_USER_FILTER="
    "DRONE_GITHUB_SERVER=https://github.com"
    "DRONE_GITHUB_CLIENT_ID="
    "DRONE_GITHUB_CLIENT_SECRET="
    "DRONE_SERVER_HOST="
    "DRONE_RUNNER_CAPACITY=4"
    "DRONE_SERVER_PROTO=https"
    "DRONE_TLS_AUTOCERT=false"
    "## DRONE RUNNER"
    "DRONE_RPC_SECRET="
    "## REGISTRY CLEANER"
    "CLEAN_TIME="
    "KEEP_VERSIONS="
  )

## Script
echo "Initiating ${ENVFILENAME} file."; if [[ ! -f ${ENVFILENAME} ]] || ( echo -n ".env file already initiated. You want to override? [ y/N ]: " && read -r OVERRIDE && echo ${OVERRIDE::1} | grep -iqF "y" ); then echo "Will rewrite the .env file with the default one."; > ${ENVFILENAME} && for i in "${ENVFILECONTENTS[@]}"; do echo $i >> ${ENVFILENAME}; done; echo "All done."; else echo "File already exists with no overwrite permission given."; echo "Not doing anything."; fi