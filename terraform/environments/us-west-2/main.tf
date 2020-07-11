provider "aws" {
  region                  = var.region
  shared_credentials_file = pathexpand("~/.aws/credentials")
  profile = "us-west-2"
}

module "staging-state" {
  source      = "../../modules/state"
  environment = var.environment
}
//
//terraform {
//  backend "s3" {
//    bucket  = "secdevops-cuse"
//    key     = "us-west-2/secdevops-cuse.tfstate"
//    region  = "us-west-2"
//    encrypt = true
//  }
//}

module "range-infra" {
  source      = "../../modules/infrastructure"
  environment = var.environment
  cidr = var.cidr
}