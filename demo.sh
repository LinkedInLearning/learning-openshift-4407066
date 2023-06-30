#!/bin/bash

# Requires the file demo-magic.sh, available at
# # https://github.com/paxtonhare/demo-magic
. ~/demo-magic.sh

# Variables
DEMO_PROMPT="${GREEN}➜  ${CYAN}04_05 ${COLOR_RESET}"

clear
p "crc delete"
p "crc config set enable-cluster-monitoring true"
p "crc start --memory 20480 --cpus 6 --disk-size 300 --nameserver 1.1.1.1 --pull-secret-file ./pull-secret"
wait

clear
pe "oc whoami"
pe "oc new-project monitoring"
wait

clear
pe "bat 01-cluster-monitoring-config.yaml"
pe "oc apply -f 01-cluster-monitoring-config.yaml"
wait

clear
pe "bat 02-app.yaml"
pe "oc apply -f 02-app.yaml"
wait

clear
pe "bat 03-service-monitor.yaml"
pe "oc apply -f 03-service-monitor.yaml"
wait

