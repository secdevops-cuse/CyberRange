provider "aws" {
  region = "${var.region}"
//  shared_credentials_file = "/Users/cappetta/.aws/credentials"
//  profile                 = "circleci"
}

module "staging-state" {
  source      = "../../modules/state"
  environment = "${var.environment}"
}



terraform {
  backend "s3" {
    bucket  = "secdevops-cuse/staging"
    key     = "nvirginia-terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

module "staging-infrastructure" {
  source      = "../../modules/infrastructure"
  environment = "${var.environment}"
}

output "web-alb-dns-name" {
  value = "${module.staging-infrastructure.web-alb-dns-name}"
}

output "web-instance-ips" {
  value = "${module.staging-infrastructure.web-instance-ips}"
}

