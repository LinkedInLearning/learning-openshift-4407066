#!/bin/bash

# Requires the file demo-magic.sh, available at
# # https://github.com/paxtonhare/demo-magic
. ~/demo-magic.sh

# Variables
DEMO_PROMPT="${GREEN}➜  ${CYAN}04_02 ${COLOR_RESET}"

clear
pe "oc process -f 00-postgresql-template.yaml | oc apply -f -"
pe "oc apply -f 01-app.yaml"
wait

clear
pe "bat hpa.yaml"
pe "oc apply -f hpa.yaml"
wait

clear
pe "bat vpa.yaml"
pe "oc apply -f vpa.yaml"
wait

clear
pe "oc get vpa vpa --output yaml | bat --language yaml"
wait
