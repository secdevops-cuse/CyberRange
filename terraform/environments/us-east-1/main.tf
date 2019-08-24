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
    bucket  = var.bucket
    key     = var.bucketkey
    region  = var.region
    //    bucket  = "secdevops-cuse"
    //    key     = "virginia/secdevops-cuse-dev.tfstate"
    //    region  = "us-east-1"
    encrypt = true
  }
}

module "staging-infrastructure" {
  source      = "../../modules/infrastructure"
  environment = var.environment
}

