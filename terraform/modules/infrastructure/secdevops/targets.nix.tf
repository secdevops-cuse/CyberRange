# Webgoat instance details
# original reference: https://github.com/BlacksInTechnologyOrg/bit-pentest-labs/blob/master/aws/terraform/modules/webgoat/webgoat.tf
locals {
  cyberRange_subnets_ids = [
    "${var.target_subnet_id}",
    "${var.attacker_subnet_id}",
  ]
}

resource "aws_instance" "cr_skytower" {
  count = "${var.docker_ct}"
  ami           = "${data.aws_ami.skytower.id}"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.targets.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "Skytower-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "cr_stapler" {
  count = "${var.docker_ct}"
  ami           = "${data.aws_ami.stapler.id}"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.targets.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "Stapler-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "cr_vulnos" {
  count = "${var.docker_ct}"
  ami           = "${data.aws_ami.vulnos.id}"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.targets.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "Vulnos-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "cr_sickos" {
  count = "${var.docker_ct}"
  ami           = "${data.aws_ami.sickos.id}"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.targets.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "Sickos-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "cr_mrrobot" {
  count = "${var.docker_ct}"
  ami           = "${data.aws_ami.mrrobot.id}"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.targets.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "MrRobot-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "cr_fristileaks" {
  count = "${var.docker_ct}"
  ami           = "${data.aws_ami.fristileaks.id}"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.targets.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "fristileaks-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "cr_hackinos" {
  count = "${var.docker_ct}"
  ami           = "${data.aws_ami.hackinos.id}"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.targets.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "hackinos-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "cr_bulldog" {
  count = "${var.docker_ct}"
  ami           = "${data.aws_ami.bulldog.id}"
  instance_type = "${var.instance_type_docker}"
  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.targets.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "bulldog-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "cr_myhouse7" {
  count = "${var.docker_ct}"
  ami           = "${data.aws_ami.myhouse7.id}"
  instance_type = "${var.instance_type_docker}"
  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.targets.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "myhouse7-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "docker" {
  count = "${var.docker_ct}"

  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "${var.instance_type_docker}"
  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.targets.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  user_data = "${file("../../modules/infrastructure/cloud-init/docker.targets.yml")}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "docker-via-cloudinit-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}
