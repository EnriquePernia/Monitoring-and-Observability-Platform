## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.63.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks"></a> [eks](#module\_eks) | terraform-aws-modules/eks/aws | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.snapshot](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_eks_cluster.eks](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster) | data source |
| [aws_eks_cluster_auth.eks](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster_auth) | data source |
| [aws_subnet_ids.subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet_ids) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_access_key"></a> [aws\_access\_key](#input\_aws\_access\_key) | AWS access key | `string` | n/a | yes |
| <a name="input_aws_asg_desired_capacity"></a> [aws\_asg\_desired\_capacity](#input\_aws\_asg\_desired\_capacity) | ASG desired capacity | `number` | n/a | yes |
| <a name="input_aws_asg_max_size"></a> [aws\_asg\_max\_size](#input\_aws\_asg\_max\_size) | ASG max size | `number` | n/a | yes |
| <a name="input_aws_asg_min_size"></a> [aws\_asg\_min\_size](#input\_aws\_asg\_min\_size) | ASG min size | `number` | n/a | yes |
| <a name="input_aws_azs"></a> [aws\_azs](#input\_aws\_azs) | aws az | `list` | n/a | yes |
| <a name="input_aws_bucket_name"></a> [aws\_bucket\_name](#input\_aws\_bucket\_name) | My S3 bucket | `string` | n/a | yes |
| <a name="input_aws_clusterName"></a> [aws\_clusterName](#input\_aws\_clusterName) | Name for EKS cluster | `string` | n/a | yes |
| <a name="input_aws_image_id"></a> [aws\_image\_id](#input\_aws\_image\_id) | aws image id | `string` | n/a | yes |
| <a name="input_aws_instance_type"></a> [aws\_instance\_type](#input\_aws\_instance\_type) | My instance type | `string` | n/a | yes |
| <a name="input_aws_key"></a> [aws\_key](#input\_aws\_key) | aws key | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS region | `string` | n/a | yes |
| <a name="input_aws_secret_key"></a> [aws\_secret\_key](#input\_aws\_secret\_key) | AWS secret key | `string` | n/a | yes |
| <a name="input_aws_vpc"></a> [aws\_vpc](#input\_aws\_vpc) | aws vpc | `string` | n/a | yes |

## Outputs

No outputs.
