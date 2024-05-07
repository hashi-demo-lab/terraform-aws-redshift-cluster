data "aws_caller_identity" "current" {}

module "redshift_cluster" {
  source  = "app.terraform.io/tfc-demo-au/redshift-cluster/awscc"
  version = "~>  0.1.0"

  aws_account                 = data.aws_caller_identity.current.account_id
  datazone_domain_name        = var.datazone_domain_id
  datazone_project_id         = var.datazone_project_id
  region                      = var.region
}