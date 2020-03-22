variable "environment" {
  default = "development"
}

variable "region" {
  default = "us-east-1"
}

// todo: remove or variablize for all subnets, note detectionlab has hard-coded creds
variable "cidr" {
  default = "192.168.38.0/24"
}

