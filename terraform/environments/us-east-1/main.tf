provider "aws" {
  region                  = var.region
  shared_credentials_file = pathexpand("~/.aws/credentials")
}

module "staging-state" {
  source      = "../../modules/state"
  environment = var.environment
}

terraform {
  backend "s3" {
        bucket  = "secdevops-cuse"
        key     = "virginia/secdevops-cuse-dev.tfstate"
        region  = "us-east-1"
    encrypt = true
  }
}

module "range-infra" {
  source      = "../../modules/infrastructure"
  environment = var.environment
  cidr = var.cidr
}

//
//module "organization_access_group" {
//  source            = "git::https://github.com/cloudposse/terraform-aws-organization-access-group.git?ref=master"
//  namespace         = "whofuckingcares"
//  stage             = "dev"
//  name              = "cloudgoat"
//  user_names        = ["cloudgoat"]
//  role_arns         = {
//    "cp@dev" = "arn:aws:iam::588675961644:role/OrganizationAccountAccessRole"
//  }
//}

module "organizational-units" {
  source        = "devops-workflow/organizational-units/aws"
  version       = "0.0.1"
  aws_profile   = "default"
  ou_list       = "CyberRange"
//  accounts      = ["cloudgoat"]
}


module "organization_access_role" {
  source = "git::https://github.com/cloudposse/terraform-aws-organization-access-role.git?ref=master"
  master_account_id = "588675961644"
  role_name = "OrganizationAccountAccessRole"
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}