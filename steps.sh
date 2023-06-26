#!/usr/bin/env bash

# Kubeadmin must give these roles to developer!
# oc -n nginxtest policy add-role-to-user registry-editor developer
# oc -n nginxtest policy add-role-to-user system:image-builder developer

# If kubeadmin performs the `oc new-project` command, remember to
# oc -n nginxtest adm policy add-role-to-user edit developer

PROJECT=nginxtest
REGISTRY="default-route-openshift-image-registry.apps-crc.testing/${PROJECT}"

# Build the container image and push it to the OpenShift registry
podman login --tls-verify=false -u unused -p $(oc whoami -t)  ${REGISTRY}
podman build -t ${REGISTRY}/nginx:latest .
podman push --tls-verify=false ${REGISTRY}/nginx:latest

# Verify that the image is there
oc get is

# Apply the good deployment
oc apply -f right.yaml

# Then port forward to access the pod
POD=$(oc get pods -o custom-columns=POD:.metadata.name --no-headers -n ${PROJECT})
oc port-forward ${POD} 5000:8080

# Then in localhost:5000 nginx appears

# Same for
# http://hello-nginx.apps-crc.testing/
