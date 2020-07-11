locals {
  subnets_ids = [
    "${var.attacker_subnet_id}",
    "${var.honeypot_subnet_id}",
  ]
}

resource "aws_instance" "tpot-full-build" {
  count = "${var.tpot_ct}"

//  ami           = "${data.aws_ami.debianstretch.id}"
  ami           = "${data.aws_ami.debianbuster.id}"
  instance_type = "${var.instance_type_tpot}"
  subnet_id = "${element(local.subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.tpot.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  user_data = "${file("../../modules/infrastructure/cloud-init/tpot.setup.yml")} content: ${base64encode(file("../../modules/infrastructure/config/tpot.conf"))}"

  root_block_device {
    volume_type = "gp2"
    volume_size = "${var.tpot_root_vol_size}"
    delete_on_termination = "true"
  }

  tags = {
    Name = "Tpot-${count.index}"
    Environment = "${var.environment}"
  }
}

resource "aws_instance" "tpot" {
  count = "${var.tpot_ct}"

  ami           = "${data.aws_ami.debianbuster.id}"
  instance_type = "${var.instance_type_tpot}"
  subnet_id = "${element(local.subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.tpot.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  user_data = "${file("../../modules/infrastructure/cloud-init/tpot.setup.yml")} content: ${base64encode(file("../../modules/infrastructure/config/tpot.conf"))}"

  root_block_device {
    volume_type = "gp2"
    volume_size = "${var.tpot_root_vol_size}"
    delete_on_termination = "true"
  }

  tags = {
    Name = "Tpot-buster-${count.index}"
    Environment = "${var.environment}"
  }
}


resource "aws_instance" "beehive" {
  count = "${var.fbctf_ct}"

  ami           = "${data.aws_ami.ubuntu1604.id}"
  instance_type = "${var.instance_type_docker}"
  subnet_id = "${element(local.subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.tpot.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  user_data = "${file("${var.fbctf_user_data}")}"

  root_block_device {
    volume_type = "gp2"
    volume_size = "${var.tpot_root_vol_size}"
    delete_on_termination = "true"
  }

  tags = {
    Name = "Tpot-r&d-${count.index}"
    Environment = "${var.environment}"
  }
}

