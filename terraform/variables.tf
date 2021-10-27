variable "aws_access_key" {
  type = string
  description = "AWS access key"
}
variable "aws_secret_key" {
  type = string
  description = "AWS secret key"
}
variable "aws_region" {
  type = string
  description = "AWS region"
}

variable "aws_key" {
    type = string
    description = "aws key"
}

variable "aws_vpc" {
  type = string
  description = "aws vpc"
}

variable "aws_azs" {
  type = list
  description = "aws az"
}

variable "aws_image_id" {
  type = string
  description = "aws image id"
}

variable "aws_codeDeploy_ARN" {
  type = string
  description = "aws codeDeploy policy"
}

variable "aws_EC2codeDeploy_ARN" {
  type = string
  description = "aws EC2codeDeploy policy"
}

variable "aws_clusterName" {
  type = string
  description = "Name for EKS cluster"
}

variable "aws_az_count" {
  type = number
  description = "Number of azs"
}

variable "aws_vpc_cidr_base" {
  type = string
  description = "Cdir base"
}

variable "aws_private_subnets" {
  type = list
  description = "Private subnets for vpc"
}

variable "aws_public_subnets" {
  type = list
  description = "Public subnets for vpc"
}

variable "aws_my_ip" {
  type = string
  description = "My ip"
}

variable "aws_bucket_name" {
  type = string
  description = "My S3 bucket"
}

variable aws_instance_type {
  type = string
  description = "My instance type"
}

variable aws_asg_max_size {
  type = number
  description = "ASG max size"
}

variable aws_asg_min_size {
  type = number
  description = "ASG min size"
}

variable ws_asg_desired_capacity {
  type = number
  description = "ASG desired capacity"
}