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
    bucket  = "secdevops-cuse-london"
    key     = "london/secdevops-cuse.tfstate"
    region  = "eu-west-2"
    encrypt = true
  }
}

module "staging-infrastructure" {
  source      = "../../modules/infrastructure"
  environment = var.environment
}

