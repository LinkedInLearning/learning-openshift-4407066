#!/bin/bash

# Requires the file demo-magic.sh, available at
# # https://github.com/paxtonhare/demo-magic
. ~/demo-magic.sh

# Variables
DEMO_PROMPT="${GREEN}➜  ${CYAN}04_03 ${COLOR_RESET}"

clear
pe "oc apply -f 01-cluster-monitoring-config.yaml"
pe "oc apply -f 02-app.yaml"
pe "oc apply -f 03-service-monitor.yaml"
wait
