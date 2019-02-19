provider "aws" {
  region = "${var.region}"
}

module "production-state" {
  source = "../../modules/state"

  environment = "${var.environment}"
}

terraform {
  backend "s3" {
    bucket  = "secdevops-cuse/production"
    key     = "terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

module "production-infrastructure" {
  source = "../../modules/infrastructure"

  environment = "${var.environment}"
}

output "web-alb-dns-name" {
  value = "${module.production-infrastructure.web-alb-dns-name}"
}

output "web-instance-ips" {
  value = "${module.production-infrastructure.web-instance-ips}"
}
