#!/bin/bash

# Requires the file demo-magic.sh, available at
# # https://github.com/paxtonhare/demo-magic
. ~/demo-magic.sh

# Variables
PROJECT=akosma-dev
DEMO_PROMPT="${GREEN}➜  ${CYAN}03_02 ${COLOR_RESET}"
SANDBOX=sandbox-m2.ll9k.p1.openshiftapps.com

clear

pe "bat service.yml"
pe "oc apply -f service.yml"
wait
clear

pei "bat locustfile.py"
pe "locust -u 1500 -r 100 -t 10s -H https://simple-deno-api-$PROJECT.apps.$SANDBOX --autostart --autoquit 1 --headless"
wait
clear

cmd

