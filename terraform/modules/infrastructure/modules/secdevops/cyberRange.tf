# Webgoat instance details
# original reference: https://github.com/BlacksInTechnologyOrg/bit-pentest-labs/blob/master/aws/terraform/modules/webgoat/webgoat.tf
locals {
  cyberRange_subnets_ids = [
    "${var.public-a-subnet-id}",
    "${var.public-b-subnet-id}",
  ]
}

resource "aws_instance" "cr_skytower" {
  count = "${var.docker_ct}"

  ami           = "${var.ami_skytower}"
  instance_type = "${var.docker_instance_type}"

  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]

  key_name = "${aws_key_pair.circleci_key.key_name}"

  root_block_device {
    delete_on_termination = true
  }

  tags = {
    Name        = "CyberRange Skytower-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "cr_ms3_2k8" {
  count = "${var.docker_ct}"

  ami           = "${var.ami_ms3_2k8}"
  instance_type = "${var.docker_instance_type}"

  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]

  key_name = "${aws_key_pair.circleci_key.key_name}"

  root_block_device {
    delete_on_termination = true
  }

  tags = {
    Name        = "CyberRange MetaSploitable 3 win2k8-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "cr_stapler" {
  count = "${var.docker_ct}"

  ami           = "${var.ami_stapler}"
  instance_type = "${var.docker_instance_type}"

  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]

  key_name = "${aws_key_pair.circleci_key.key_name}"

  root_block_device {
    delete_on_termination = true
  }

  tags = {
    Name        = "CyberRange Stapler-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "cr_vulnos" {
  count = "${var.docker_ct}"

  ami           = "${var.ami_vulnos}"
  instance_type = "${var.docker_instance_type}"

  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]

  key_name = "${aws_key_pair.circleci_key.key_name}"

  root_block_device {
    delete_on_termination = true
  }

  tags = {
    Name        = "CyberRange Vulnos-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "cr_sickos" {
  count = "${var.docker_ct}"

  ami           = "${var.ami_sickos}"
  instance_type = "${var.docker_instance_type}"

  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]

  key_name = "${aws_key_pair.circleci_key.key_name}"

  root_block_device {
    delete_on_termination = true
  }

  tags = {
    Name        = "CyberRange Sickos-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "cr_mrrobot" {
  count = "${var.docker_ct}"

  ami           = "${var.ami_mrrobot}"
  instance_type = "${var.docker_instance_type}"

  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]

  key_name = "${aws_key_pair.circleci_key.key_name}"

  root_block_device {
    delete_on_termination = true
  }

  tags = {
    Name        = "CyberRange MrRobot-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "cr_fristileaks" {
  count = "${var.docker_ct}"

  ami           = "${var.ami_fristileaks}"
  instance_type = "${var.docker_instance_type}"

  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]

  key_name = "${aws_key_pair.circleci_key.key_name}"

  root_block_device {
    delete_on_termination = true
  }

  tags = {
    Name        = "CyberRange fristileaks-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "cr_ms3_nix" {
  count = "${var.docker_ct}"

  ami           = "${var.ami_ms3_nix}"
  instance_type = "${var.docker_instance_type}"

  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]

  key_name = "${aws_key_pair.circleci_key.key_name}"

  root_block_device {
    delete_on_termination = true
  }

  tags = {
    Name        = "CyberRange ms3_nix-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "win7" {
  count = "${var.docker_ct}"

  ami           = "${var.ami_win7}"
  instance_type = "${var.docker_instance_type}"

  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]

  key_name = "${aws_key_pair.circleci_key.key_name}"

  root_block_device {
    delete_on_termination = true
  }

  tags = {
    Name        = "CyberRange win7-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "win8" {
  count = "${var.docker_ct}"

  ami           = "${var.ami_win8}"
  instance_type = "${var.docker_instance_type}"

  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]

  key_name = "${aws_key_pair.circleci_key.key_name}"

  root_block_device {
    delete_on_termination = true
  }

  tags = {
    Name        = "CyberRange win8-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}
