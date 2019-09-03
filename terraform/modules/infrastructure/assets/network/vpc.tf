data "aws_availability_zones" "available" {}

resource "aws_vpc" "main" {
  cidr_block = "192.168.0.0/16"

  tags = {
    name        = "main"
    environment = "${var.environment}"
  }
}
