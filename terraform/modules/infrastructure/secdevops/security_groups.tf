resource "aws_security_group" "tpot" {
  name        = "T-Pot"
  description = "T-Pot Honeypot"
  vpc_id      = "${var.vpc-id}"

  ingress {
    from_port   = 0
    to_port     = 64000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 0
    to_port     = 64000
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 64294
    to_port     = 64294
    protocol    = "tcp"
    cidr_blocks = ["${var.ip_list}"]
  }
  ingress {
    from_port   = 64295
    to_port     = 64295
    protocol    = "tcp"
    cidr_blocks = ["${var.ip_list}"]
  }
  ingress {
    from_port   = 64297
    to_port     = 64297
    protocol    = "tcp"
    cidr_blocks = ["${var.ip_list}"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "T-Pot",
    Environment = "${var.environment}"
    Terraform   = "True"
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
    cidr_blocks = ["${var.ip_list}"]
  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["${var.ip_list}"]
  }

  # Allow all traffic from the attacker subnet
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["192.168.38.0/24"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name          = "FB-CTF"
    Environment   = "${var.environment}"
    Terraform     = "True"
  }
}

resource "aws_security_group" "kali" {
  name        = "attackers"
  description = "penetration testing assets"
  vpc_id      = "${var.vpc-id}"


  # terminal/ssh rule
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${var.ip_list}"]
  }

  # vnc rule
  ingress {
    from_port   = 5901
    to_port     = 5901
    protocol    = "tcp"
    cidr_blocks = ["${var.ip_list}"]
  }

  # just open up everything else to the researchers IP
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["${var.ip_list}"]
  }

  # outbound internet access
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [
      "0.0.0.0/0"]
  }
    tags = {
    Name        = "kali"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

#
resource "aws_security_group" "targets" {
  name        = "targets"
  description = "windows / linux targets"
  vpc_id      = "${var.vpc-id}"

  # terminal/ssh rule
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${var.ip_list}"]
  }

  # terminal/ssh rule
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["${var.ip_list}"]
  }

  # inbound rules
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["${var.ip_list}"]
  }


  # outbound rules
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["${var.ip_list}"]
  }
  tags = {
    Name        = "targets_securityGroup"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

// import from https://github.com/clong/DetectionLab
resource "aws_security_group" "logger" {
  name        = "logger_security_group"
  description = "DetectionLab: Security Group for the logger host"
  vpc_id      = "${var.vpc-id}"

  # SSH access
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${var.ip_list}"]
  }

  # Splunk access
  ingress {
    from_port   = 8000
    to_port     = 8000
    protocol    = "tcp"
    cidr_blocks = ["${var.ip_list}"]
  }

  # Fleet access
  ingress {
    from_port   = 8412
    to_port     = 8412
    protocol    = "tcp"
    cidr_blocks = ["${var.ip_list}"]
  }

  # Caldera access
  ingress {
    from_port   = 8888
    to_port     = 8888
    protocol    = "tcp"
    cidr_blocks = ["${var.ip_list}"]
  }

  # outbound internet access
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "logger_securityGroup"
    Environment = "${var.environment}"
    Terraform   = "True"
  }

}

// import from https://github.com/clong/DetectionLab
resource "aws_security_group" "windows" {
  name        = "windows_security_group"
  description = "DetectionLab: Security group for the Windows hosts"
  vpc_id      = "${var.vpc-id}"

  # RDP
  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["${var.ip_list}"]
  }

  # WinRM
  ingress {
    from_port   = 5985
    to_port     = 5986
    protocol    = "tcp"
    cidr_blocks = ["${var.ip_list}"]
  }

  # Windows ATA
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["${var.ip_list}"]
  }

  # outbound internet access
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name        = "detectionlab_sg"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_security_group" "malware" {
  name        = "malware"
  description = "flarevm malware security group"
  vpc_id      = "${var.vpc-id}"

  # RDP
  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["${var.ip_list}"]
  }

  # ssh access
  ingress {
    from_port   = 0
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${var.ip_list}"]
  }

  # outbound internet access - eliminate almost everything
  egress {
    from_port   = 1
    to_port     = 1
    protocol    = "tcp"
    cidr_blocks = ["66.66.66.66/32"]
  }
  tags = {
    Name        = "malware_sg"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}