#!/bin/bash
set -e

# Namespace to deploy into
NS="pa11y-dashboard"

# Create ns if not present
kubectl get ns ${NS} || kubectl create ns ${NS}

# Deploy containers and services
kubectl -n ${NS} apply -f ./k8s/

# Retrieve all our resources
kubectl -n ${NS} get all
