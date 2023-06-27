#!/bin/bash

# Requires the file demo-magic.sh, available at
# # https://github.com/paxtonhare/demo-magic
. ~/demo-magic.sh

# Variables
DEMO_PROMPT="${GREEN}➜  ${CYAN}04_02 ${COLOR_RESET}"

clear
pe "bat hpa.yaml"
pe "oc apply -f hpa.yaml"
wait

clear
pe "bat vpa.yaml"
pe "oc apply -f hpa.yaml"
wait
