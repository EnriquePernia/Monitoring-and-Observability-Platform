#!/bin/bash

aws eks update-kubeconfig --name eks-cluster 

kubectl create -f https://download.elastic.co/downloads/eck/1.8.0/crds.yaml
kubectl apply -f https://download.elastic.co/downloads/eck/1.8.0/operator.yaml

kubectl -n elastic-system logs -f statefulset.apps/elastic-operator