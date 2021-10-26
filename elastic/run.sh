#!/bin/bash

aws eks update-kubeconfig --name eks-cluster 

kubectl create -f https://download.elastic.co/downloads/eck/1.8.0/crds.yaml
kubectl apply -f https://download.elastic.co/downloads/eck/1.8.0/operator.yaml

kubectl apply -f .
sleep 60
kubectl port-forward service/kibana-kb-http 5601