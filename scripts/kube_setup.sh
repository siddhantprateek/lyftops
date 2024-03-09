#!/bin/sh
# After installing kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
# Copy the kubeconfig.yaml configuration from linode 
vi kubeconfig.yaml
export KUBECONFIG=kubeconfig.yaml