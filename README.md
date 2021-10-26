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


## Goals:
1.Implement a Monitoring & Observability solution for resources in a cloud environment. -> EKS cluster with an ELK solution that gets data from each node.

2.As the system scales, ensure that data is not lost through the ingestion pipeline. -> Auto discover function ensures that each new resource is monitored.

3.Design for Failover of the production environment to different regions during DR. -> An ASG that deploy a minimun of 3 ec2 instances along all AZ's ensuring high availability. Multiple elasticsearch nodes so if one fails, the others are still working and app keep up. With a minimun of 3 nodes and 1 primary shard and 2 secondary for each index, We make it very difficult to lose data because if a node falls, the data continues to be kept in the other nodes. If we lose a primary shard, a relication shard located in another node will become primary. For this example one primary shard is enough because the amounth of data we get is so small, on bigger projects we can scalate this and add more primary shards enhancing performance.

4.Provide a scalable and performant solution that can answer customer queries quickly. -> ELK allows us to scale resources on the go, we can update deploymets replicas if needed for better performance and ASG automaticly deploys more nodes if needed.



1º Basic EKS cluster with one node
2º Basic monitoring platform with elasticsearch, kibana, filebeat.
3º More complex Architecture for high reliability, an ASG that allows managing high loads by deploying more nodes. A minimum of 3 nodes distributed across all AZs.
4º Resiliency, 3 elasticsearch master nodes one in echas az to ensure that our platform can resist az going down and instances errors. 3 data nodes to ensure we dont lose data. 1 primary shard and 2 replication to enhance performance and make it even more difficult to lose data.
5º Added  MetricBeat to visualice system metrics.
6º DR. Added an s3 bucket to store snapshots in case everything else fails.