resource "aws_security_group" "tpot" {
  name        = "T-Pot"
  description = "T-Pot Honeypot"
  vpc_id      = "${var.vpc-id}"
  ingress {
    from_port   = 0
    to_port     = 64294
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 64295
    to_port     = 64295
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 64297
    to_port     = 64297
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 64298
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags {
    Name = "T-Pot"
  }
}

resource "aws_security_group" "fbctf" {
  name        = "FB-CTF"
  description = "FaceBook Capture The Flag"
  vpc_id      = "${var.vpc-id}"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "FB-CTF-${count.index}"
    Environment = "${var.environment}"
    Terraform = "True"
    Zombie = "True"
    Initialization_Complete = "True"
  }
}

resource "aws_security_group" "kali" {
  name        = "kali"
  description = "kali"
  vpc_id      = "${var.vpc-id}"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # terminal/ssh rule
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # inbound rules
  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    security_groups = ["${aws_security_group.webgoat.id}"]
  }

  tags {
    Name = "kali-${count.index}"
    Environment = "${var.environment}"
    Terraform = "True"
    Zombie = "false"
    verified = "false"
  }
}

#WebGoat security group rules
resource "aws_security_group" "webgoat" {
  name = "webgoat-instances"
  description = "Access to webgoat instances"
  vpc_id = "${var.vpc-id}"

  # terminal/ssh rule
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["${var.ip_list}"]
  }

  # terminal/ssh rule
  ingress {
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    cidr_blocks = ["${var.ip_list}"]
  }

  # outbound rules
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # inbound rules
  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["${var.ip_list}"]
  }
  # inbound rules
  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    security_groups = ["${aws_security_group.kali.id}"]
  }

  tags = {
    Name = "webgoat-instances"
    Environment = "${var.environment}"
    Terraform = "True"
    Zombie = "false"
    verified = "false"
  }
}