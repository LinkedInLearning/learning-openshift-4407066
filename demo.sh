#!/bin/bash

# Requires the file demo-magic.sh, available at
# # https://github.com/paxtonhare/demo-magic
. ~/demo-magic.sh

# Variables
DEMO_PROMPT="${GREEN}➜  ${CYAN}04_01 ${COLOR_RESET}"

clear
pe "crc config set enable-cluster-monitoring true"
pe "oc process -f 00-postgresql-template.yaml -o yaml | oc apply -f -"
pe "oc apply -f 01-app.yaml"
pe "bat 02-cluster-logging-instance.yaml"
pe "oc apply -f 02-cluster-logging-instance.yaml"
wait
