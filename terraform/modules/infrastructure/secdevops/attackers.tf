locals {
  pen_subnet_ids = [
    "${var.attacker_subnet_id}",
    "${var.target_subnet_id}",
  ]
}

resource "aws_instance" "kali" {
  count = "${var.kali_ct}"
  ami = "${data.aws_ami.kali.id}"
  instance_type = "${var.instance_type_kali}"
  subnet_id              = "${element(local.pen_subnet_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.kali.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  user_data = "${file("${path.module}/../cloud-init/kali.yml")}"

  root_block_device {
    delete_on_termination = true
    volume_size           = 160
  }
  tags = {
    Name        = "kali-linux-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "commando" {
  count = "${var.docker_ct}"
  ami = "${data.aws_ami.commando.id}"
  instance_type = "${var.instance_type_win}"
  subnet_id              = "${element(local.pen_subnet_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.windows.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"

  root_block_device {
    delete_on_termination = true
    volume_size           = 160
  }
  tags = {
    Name        = "commando-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "commandov2" {
  count = "${var.docker_ct}"
  ami           = "${data.aws_ami.commandov2.id}"
  instance_type = "${var.instance_type_commandov2}"
  subnet_id              = "${element(local.pen_subnet_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.kali.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
    volume_size           = 160
  }
  tags = {
    Name        = "commando-v2-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}