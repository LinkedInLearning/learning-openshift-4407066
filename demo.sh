#!/bin/bash

# Requires the file demo-magic.sh, available at
# # https://github.com/paxtonhare/demo-magic
. ~/demo-magic.sh

# Variables
DEMO_PROMPT="${GREEN}➜  ${CYAN}03_05 ${COLOR_RESET}"

eval $(crc oc-env)

clear
pe "oc new-project service-mesh-test"
pe "oc apply -f 01-service-mesh.yaml"
pe "vim 02-app.yaml"
pe "oc apply -f 02-app.yaml"
wait

clear
pe "curl http://apitest.apps-crc.testing/fortune --silent | jq"
pe "crc console --credentials"
wait

