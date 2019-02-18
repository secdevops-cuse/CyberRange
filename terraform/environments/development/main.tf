provider "aws" {
  region = "${var.region}"
//  shared_credentials_file = "/Users/<name>/.aws/credentials"
  profile                 = "circleci"

}

module "staging-state" {
  source      = "../../modules/state"
  environment = "${var.environment}"
}

terraform {
  backend "s3" {
    bucket  = "secdevops-cuse"
    key     = "development/secdevops-cuse-dev.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

module "staging-infrastructure" {
  source      = "../../modules/infrastructure"
  environment = "${var.environment}"
}
