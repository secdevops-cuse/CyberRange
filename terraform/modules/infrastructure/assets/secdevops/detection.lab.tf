locals {
  cyberRange_detection_subnets_ids = [
    "${var.attacker_subnet_id}",
    "${var.target_subnet_id}",
  ]
}


resource "aws_instance" "dl-wef" {
  count = "${var.docker_ct}"
  ami           = "${data.aws_ami.detection-wef.id}"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_detection_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.targets.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "CyberRange-detection_lab_wef-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "dl-dc" {
  count = "${var.docker_ct}"
  ami           = "${data.aws_ami.detection-dc.id}"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_detection_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.targets.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "CyberRange-detection_lab_dc-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}
resource "aws_instance" "dl-win10" {
  count = "${var.docker_ct}"
  ami           = "${data.aws_ami.detection-dc.id}"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_detection_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.targets.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "CyberRange-detection_lab_win10-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}
