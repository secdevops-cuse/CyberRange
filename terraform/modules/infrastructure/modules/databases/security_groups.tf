resource "aws_security_group" "allow-mysql-ingress" {
  name        = "allow-mysql-ingress"
  description = "Allow incoming mysql connections from the VPC."
  vpc_id      = "${var.vpc-id}"

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["${var.vpc-cidr-block}"]
  }
}
