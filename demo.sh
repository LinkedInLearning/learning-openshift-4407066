#!/bin/bash

# Requires the file demo-magic.sh, available at
# # https://github.com/paxtonhare/demo-magic
. ~/demo-magic.sh

# Variables
PROJECT=service-mesh
DEMO_PROMPT="${GREEN}➜  ${CYAN}03_02 ${COLOR_RESET}"
# SANDBOX=sandbox-m2.ll9k.p1.openshiftapps.com

clear

pe "bat 01-app.yaml"
pe "oc apply -f 01-app.yaml"
wait
clear

pei "bat 02-cluster-logging-instance.yaml"
pe "oc apply -f 02-cluster-logging-instance.yaml"
wait
