provider "aws" {
  region                  = "${var.region}"
  shared_credentials_file = "${pathexpand("~/.aws/credentials")}"
}

module "staging-state" {
  source      = "../../modules/state"
  environment = "${var.environment}"
}

module "range-infra" {
  source      = "../../modules/infrastructure"
  environment = var.environment
  cidr = var.cidr
}
