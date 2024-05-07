# AWS RedShift Cluster

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_redshift"></a> [redshift](#module\_redshift) | terraform-aws-modules/redshift/aws | 5.4.0 |
| <a name="module_security_group"></a> [security\_group](#module\_security\_group) | terraform-aws-modules/security-group/aws//modules/redshift | ~> 5.0 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | ~> 5.0 |

## Resources

| Name | Type |
|------|------|
| [aws_kms_key.redshift](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |
| [aws_redshift_subnet_group.endpoint](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/redshift_subnet_group) | resource |
| [terraform_data.secret_manager_tags](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/resources/data) | resource |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |
| [aws_secretsmanager_secret.redshift_password](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/secretsmanager_secret) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_datazone_domain_id"></a> [datazone\_domain\_id](#input\_datazone\_domain\_id) | Domain ID of datazone; input value is rendered as output in the terraform-awscc-datazone-domain module | `string` | n/a | yes |
| <a name="input_datazone_project_id"></a> [datazone\_project\_id](#input\_datazone\_project\_id) | Project ID of one of the projects associated to a datazone; input value is rendered as output in the terraform-awscc-datazone-domain module | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region to deploy the redis-cluster in | `string` | `"ap-southeast-2"` | no |
| <a name="input_secondary_region"></a> [secondary\_region](#input\_secondary\_region) | The region to deploy the redis-cluster in | `string` | `"ap-southeast-1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_arn"></a> [cluster\_arn](#output\_cluster\_arn) | The Redshift cluster ARN |
| <a name="output_cluster_database_name"></a> [cluster\_database\_name](#output\_cluster\_database\_name) | The name of the default database in the Cluster |
| <a name="output_cluster_id"></a> [cluster\_id](#output\_cluster\_id) | The Redshift cluster ID |
| <a name="output_cluster_identifier"></a> [cluster\_identifier](#output\_cluster\_identifier) | The Redshift cluster identifier |
| <a name="output_master_password_secret_arn"></a> [master\_password\_secret\_arn](#output\_master\_password\_secret\_arn) | ARN of managed master password secret |

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_redshift"></a> [redshift](#module\_redshift) | terraform-aws-modules/redshift/aws | 5.4.0 |
| <a name="module_security_group"></a> [security\_group](#module\_security\_group) | terraform-aws-modules/security-group/aws//modules/redshift | ~> 5.0 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | ~> 5.0 |

## Resources

| Name | Type |
|------|------|
| [aws_kms_key.redshift](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |
| [aws_redshift_subnet_group.endpoint](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/redshift_subnet_group) | resource |
| [terraform_data.secret_manager_tags](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/resources/data) | resource |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |
| [aws_secretsmanager_secret.redshift_password](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/secretsmanager_secret) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_datazone_domain_id"></a> [datazone\_domain\_id](#input\_datazone\_domain\_id) | Domain ID of datazone; input value is rendered as output in the terraform-awscc-datazone-domain module | `string` | n/a | yes |
| <a name="input_datazone_project_id"></a> [datazone\_project\_id](#input\_datazone\_project\_id) | Project ID of one of the projects associated to a datazone; input value is rendered as output in the terraform-awscc-datazone-domain module | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region to deploy the redis-cluster in | `string` | `"ap-southeast-2"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_arn"></a> [cluster\_arn](#output\_cluster\_arn) | The Redshift cluster ARN |
| <a name="output_cluster_database_name"></a> [cluster\_database\_name](#output\_cluster\_database\_name) | The name of the default database in the Cluster |
| <a name="output_cluster_id"></a> [cluster\_id](#output\_cluster\_id) | The Redshift cluster ID |
| <a name="output_cluster_identifier"></a> [cluster\_identifier](#output\_cluster\_identifier) | The Redshift cluster identifier |
| <a name="output_master_password_secret_arn"></a> [master\_password\_secret\_arn](#output\_master\_password\_secret\_arn) | ARN of managed master password secret |
<!-- END_TF_DOCS -->