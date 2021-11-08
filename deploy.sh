#!/bin/bash

#Execute terraform
terraform -chdir=terraform/ apply -auto-approve

# Connect to EKS cluster
aws eks update-kubeconfig --name eks-cluster

# Generate aws keys for resources
kubectl create secret generic aws-s3-keys --from-literal=access-key-id=< YOUR AWS ID > --from-literal=access-secret-key=< YOUR AWS SECRET KEY >

# Deploy monitoring platform
kubectl create -f https://download.elastic.co/downloads/eck/1.8.0/crds.yaml
kubectl apply -f https://download.elastic.co/downloads/eck/1.8.0/operator.yaml
kubectl apply -f ./elastic/
