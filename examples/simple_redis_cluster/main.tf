data "aws_caller_identity" "current" {}

data "tfe_outputs" "domain" {
  organization = var.organization
  workspace    = var.workspace_name
}

module "redshift_cluster" {
  source  = "app.terraform.io/tfc-demo-au/redshift-cluster/aws"
  version = "~>  0.1.0"

  aws_account                 = data.aws_caller_identity.current.account_id
  datazone_domain_id          = coalesce(var.datazone_domain_id, data.tfe_outputs.domain.values.domain_id)
  datazone_project_id         = coalesce(var.datazone_project_id, data.tfe_outputs.domain.values.environment_project_id)
  region                      = var.region
}