#!/usr/bin/env bash

# Requires the file demo-magic.sh, available at
# https://github.com/paxtonhare/demo-magic
. ~/demo-magic.sh

DEMO_PROMPT="${GREEN}➜  ${CYAN}02_03 ${COLOR_RESET}"

# Clear the screen before starting
clear

pe "oc whoami"
pe "oc project sourcecode"
pe "PROJECT=sourcecode"
p 'REGISTRY="default-route-openshift-image-registry.apps-crc.testing/${PROJECT}"'
REGISTRY="default-route-openshift-image-registry.apps-crc.testing/${PROJECT}"

p 'podman login --tls-verify=false -u unused -p $(oc whoami -t) ${REGISTRY}'
podman login --tls-verify=false -u unused -p $(oc whoami -t) ${REGISTRY}

p 'podman pull ${REGISTRY}/simple-deno-api-git:latest'
podman pull ${REGISTRY}/simple-deno-api-git:latest

pe "podman images"

p 'podman run --rm --publish 5000:8080 ${REGISTRY}/simple-deno-api-git:latest'
podman run --rm --publish 5000:8080 ${REGISTRY}/simple-deno-api-git:latest

pe "bat $HOME/.config/containers/registries.conf"

wait
