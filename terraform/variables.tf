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

variable "aws_clusterName" {
  type = string
  description = "Name for EKS cluster"
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

variable aws_asg_desired_capacity {
  type = number
  description = "ASG desired capacity"
}