# Monitoring-and-Observability-Platform
Monitoring and observability platform cloud based

## Technologies
- EKS Cluster: AWS managed Kubernetes cluster of master servers
- AutoScaling Group containing 2 m4.large instances based on the latest EKS Amazon Linux 2 AMI: Operator managed Kubernetes worker nodes for running Kubernetes service deployments
- Associated VPC, Internet Gateway, Security Groups, and Subnets: Operator managed networking resources for the EKS Cluster and worker node instances
- Associated IAM Roles and Policies: Operator managed access resources for EKS and worker node instances
- ElasticSearch
- Kibana
- FileBeat
- S3?
- Disaster Recovering?



1. Functional Architecture
2. Functional Monitoring platform