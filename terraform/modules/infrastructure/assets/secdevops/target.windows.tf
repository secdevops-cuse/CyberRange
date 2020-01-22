locals {
  cyberRange_windows_subnets_ids = [
    "${var.target_subnet_id}",
    "${var.attacker_subnet_id}",
  ]
}

//todo: fix win2k8
//resource "aws_instance" "win2008" {
//  count = "${var.docker_ct}"
//  ami           = "${data.aws_ami.win2k8.id}"
//  instance_type = "${var.instance_type}"
//  subnet_id              = "${element(local.cyberRange_windows_subnets_ids, count.index)}"
//  vpc_security_group_ids = ["${aws_security_group.targets.id}"]
//  key_name = "${aws_key_pair.circleci_key.key_name}"
//  root_block_device {
//    delete_on_termination = true
//  }
//  tags = {
//    Name        = "win2008-${count.index}"
//    Environment = "${var.environment}"
//    Terraform   = "True"
//  }
//}

resource "aws_instance" "win7" {
  count         = "${var.docker_ct}"
  ami           = "${data.aws_ami.win7.id}"
  instance_type = "${var.instance_type}"
  subnet_id               = "${element(local.cyberRange_windows_subnets_ids, count.index)}"
  vpc_security_group_ids  = ["${aws_security_group.targets.id}"]
  key_name                = "${aws_key_pair.circleci_key.key_name}"
  user_data               = "${var.win_bootstrap_user_data}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "win7-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "win8" {
  count = "${var.docker_ct}"
  ami           = "${data.aws_ami.win8.id}"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_windows_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.targets.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "win8-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "defender_win2k10" {
  count = "${var.docker_ct}"
  ami           = "${data.aws_ami.win2k10.id}"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_windows_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.targets.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "win2k10-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "win2012" {
  count = "${var.docker_ct}"
  ami           = "${data.aws_ami.win2k12.id}"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_windows_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.targets.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "win2012-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "win2012_RTM" {
  count = "${var.docker_ct}"
  ami           = "${data.aws_ami.win2k12_RTM.id}"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_windows_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.targets.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "win2012_RTM-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "win2016" {
  count = "${var.docker_ct}"
  ami = "${data.aws_ami.win2k16.id}"
  instance_type = "${var.instance_type_win}"
  subnet_id              = "${element(local.cyberRange_windows_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.targets.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  user_data = "${var.win_bootstrap_user_data}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "win2016-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "win2019" {
  count = "${var.docker_ct}"
  ami           = "${data.aws_ami.win2k19.id}"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_windows_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.targets.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "win2019-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}
