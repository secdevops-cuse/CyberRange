provider "aws" {
  region = "${var.region}"
}

module "staging-state" {
  source      = "../../modules/state"
  environment = "${var.environment}"
}



terraform {
  backend "s3" {
    bucket  = "secdevops-cuse"
    key     = "staging/secdevops-cuse-stage-terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

module "staging-infrastructure" {
  source      = "../../modules/infrastructure"
  environment = "${var.environment}"
}

