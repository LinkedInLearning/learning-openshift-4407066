#!/bin/bash

# Requires the file demo-magic.sh, available at
# # https://github.com/paxtonhare/demo-magic
. ~/demo-magic.sh

# Variables
DEMO_PROMPT="${GREEN}➜  ${CYAN}04_02 ${COLOR_RESET}"

clear
pe "oc apply -f cluster-monitoring-config.yaml"
pe "oc process -f 00-postgresql-template.yaml | oc apply -f -"
pe "oc apply -f 01-app.yaml"
wait
