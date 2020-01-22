resource "aws_instance" "cr_ms3_2k8" {
  count = "${var.docker_ct}"

  ami           = "${data.aws_ami.ms3_2k8.id}"
  instance_type = "${var.instance_type_win}"

  subnet_id              = "${element(local.cyberRange_windows_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.targets.id}"]

  key_name = "${aws_key_pair.circleci_key.key_name}"

  root_block_device {
    delete_on_termination = true
  }

  tags = {
    Name        = "MetaSploitable_3_win2k8-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "ami_ms3_2k12" {
  count = "${var.docker_ct}"
  ami = "${data.aws_ami.ms3_2k12.id}"
  instance_type = "${var.instance_type_win}"
  subnet_id = "${element(local.cyberRange_windows_subnets_ids, count.index)}"
  vpc_security_group_ids = [
    "${aws_security_group.targets.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }

  tags = {
    Name = "MetaSploitable_3_win2k12-${count.index}"
    Environment = "${var.environment}"
    Terraform = "True"
  }
}

resource "aws_instance" "cr_ms3_nix" {
  count = "${var.docker_ct}"
  ami           = "${data.aws_ami.ms3_nix.id}"
  instance_type = "${var.instance_type_docker}"
  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.targets.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "ms3_nix-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}