#!/bin/bash

# Variables
IMAGE=$1
AKS_CLUSTER=$2
RESOURCE_GROUP=$3
DEPLOYMENT_NAME=$4      # Name of the Kubernetes deployment
CONTAINER_NAME=$5       # Name of the container within the deployment

# Connect to AKS
az aks get-credentials --resource-group $RESOURCE_GROUP --name $AKS_CLUSTER

# Deploy image to AKS
kubectl set image deployment/$DEPLOYMENT_NAME $CONTAINER_NAME=$IMAGE
