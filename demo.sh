#!/bin/bash

# Requires the file demo-magic.sh, available at
# # https://github.com/paxtonhare/demo-magic
. ~/demo-magic.sh

# Variables
DEMO_PROMPT="${GREEN}➜  ${CYAN}02_06 ${COLOR_RESET}"

clear
pe "oc apply -f 01-task.yaml"
pe "oc apply -f 02-taskrun.yaml"
pe "oc apply -f 03-goodbye.yaml"
pe "oc apply -f 04-pipeline.yaml"
pe "oc apply -f 05-pipelinerun.yaml"
pe "oc apply -f 06-clone-kaniko-pipeline.yaml"
pe "oc whoami -t | podman login -u kubeadmin --password-stdin default-route-openshift-image-registry.apps-crc.testing"
pe "podman pull default-route-openshift-image-registry.apps-crc.testing/my-first-pipeline/my-image:latest"
pe "podman images"
wait
