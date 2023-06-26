#!/bin/bash

# Requires the file demo-magic.sh, available at
# # https://github.com/paxtonhare/demo-magic
. ~/demo-magic.sh

# Variables
PROJECT=service-mesh
DEMO_PROMPT="${GREEN}➜  ${CYAN}03_03 ${COLOR_RESET}"
# SANDBOX=sandbox-m2.ll9k.p1.openshiftapps.com

eval $(crc oc-env)

clear

pe "oc new-project service-mesh"
pe "bat 01-service-mesh.yaml"
pe "oc apply -f 01-service-mesh.yaml"
wait
clear

pei "bat 02-app.yaml"
pe "oc apply -f 02-app.yaml"
wait
