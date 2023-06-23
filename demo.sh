#!/bin/bash

########################
# Include the magic
########################
. ~/demo-magic.sh

# Variables
PROJECT=serverless
DEMO_PROMPT="${GREEN}➜  ${CYAN}\W ${COLOR_RESET}"

# Hide the evidence
oc logout
clear

# Actual demo
pe "oc login -u developer -p developer https://api.crc.testing:6443"
pe "oc new-project $PROJECT"
wait
clear

pei "bat service.yml"
pe "oc apply -f service.yml"
wait
clear

pei "bat locustfile.py"
pe "locust -u 500 -r 10 -t 30s -H https://fortune-$PROJECT.apps-crc.testing --autostart --autoquit 1 --headless"
wait
clear

cmd

