variables {

  aws_account                 = "855831148133"
  datazone_domain_id          = "dzd_aigur9af556uqv"
  datazone_project_id         = "48fdcbcmx2ficn"
  tags                        = null
  region                      = "ap-southeast-2"
}

mock_provider "aws" {
    mock_data "aws_availability_zones" {
        defaults = {
            names = [
                "ap-southeast-2a",
                "ap-southeast-2b",
                "ap-southeast-2c"
            ]
        }
    }

    mock_resource "aws_redshift_cluster" {
        defaults = {
            [
                port = 5439,
            ]
        }
    }
}

# outputs.tf.tftest.hcl
run "outputs_tf_validation" {
  assert {
    condition     = output.cluster_arn == module.redshift.cluster_arn
    error_message = "incorrect Redshift cluster arn output"
  }

  assert {
    condition     = output.cluster_database_name == module.redshift.cluster_database_name
    error_message = "incorrect default database name output in redshift cluster "
  }

  assert {
    condition     = output.master_password_secret_arn == module.redshift.master_password_secret_arn
    error_message = "incorrect ARN output of master password of redshift cluster"
  }

}

# variables.tf.tftest.hcl
run "variables_tf_validation" {

  assert {
    condition     = var.datazone_domain_id != ""
    error_message = "datazone domain id variable should not be empty"
  }

   assert {
    condition     = var.datazone_project_id != ""
    error_message = "datazone project id variable should not be empty"
  }

  assert {
    condition     = var.region == "ap-southeast-2"
    error_message = "incorrect region variable"
  }
}