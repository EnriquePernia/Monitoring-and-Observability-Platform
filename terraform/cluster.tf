data "aws_eks_cluster" "eks" {
  name = module.eks.cluster_id
}

data "aws_eks_cluster_auth" "eks" {
  name = module.eks.cluster_id
}

provider "kubernetes" {
  host                   = data.aws_eks_cluster.eks.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.eks.certificate_authority[0].data)
  token                  = data.aws_eks_cluster_auth.eks.token
}

data "aws_subnet_ids" "subnets" {
  vpc_id = var.aws_vpc
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"

  cluster_version = "1.21"
  cluster_name    = var.aws_clusterName
  vpc_id          = var.aws_vpc
  subnets         = data.aws_subnet_ids.subnets.ids

  worker_groups = [
    {
      instance_type = var.aws_instance_type
      asg_max_size  = var.aws_asg_max_size
      asg_min_size  = var.aws_asg_min_size
      asg_desired_capacity = var.aws_asg_desired_capacity
    }
  ]
}