#!/bin/bash

# Requires the file demo-magic.sh, available at
# # https://github.com/paxtonhare/demo-magic
. ~/demo-magic.sh

# Variables
DEMO_PROMPT="${GREEN}➜  ${CYAN}01_07 ${COLOR_RESET}"

clear
pe "cd ~/Downloads"
pe "wget https://developers.redhat.com/content-gateway/rest/mirror/pub/openshift-v4/clients/crc/latest/crc-linux-amd64.tar.xz"
wait

clear
pe "cd ~/Downloads"
pei "ls"
pei "unxz crc-linux-amd64.tar.xz"
pei "ls"
pei "tar xf crc-linux-amd64.tar"
pei "ls"
pe "mv $(find . -name 'crc') ~/.local/bin"
wait

clear
pe "crc setup"
pe "crc start --pull-secret-file ./pull-secret.txt"
wait
