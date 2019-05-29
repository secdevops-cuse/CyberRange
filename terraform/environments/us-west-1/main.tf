provider "aws" {
  region = "${var.region}"
  profile = "default"
}

module "production-state" {
  source      = "../../modules/state"
  environment = "${var.environment}"
}

terraform {
  backend "s3" {
    bucket  = "secdevops-cuse"
    key     = "production/secdevops-cuse-prod-terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

module "production-infrastructure" {
  source      = "../../modules/infrastructure"
  environment = "${var.environment}"
}

