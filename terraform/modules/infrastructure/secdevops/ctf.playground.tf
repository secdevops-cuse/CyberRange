locals {
  fbctf_subnets_ids = [
    "${var.target_subnet_id}",
    "${var.attacker_subnet_id}",
  ]
}

resource "aws_instance" "fbctf" {
  count = "${var.fbctf_ct}"

  ami           = "${data.aws_ami.ubuntu1604.id}"
  instance_type = "${var.instance_type_docker}"

  subnet_id = "${element(local.fbctf_subnets_ids, count.index)}"

  vpc_security_group_ids = ["${aws_security_group.fbctf.id}"]

  key_name = "${aws_key_pair.circleci_key.key_name}"

  user_data = "${file("${var.fbctf_user_data}")}"

  root_block_device {
    volume_type = "gp2"
    volume_size = "${var.fbctf_root_vol_size}"
    delete_on_termination = "true"
  }

  tags = {
    Name = "FBCTF-${count.index}"
    Environment = "${var.environment}"
    Terraform = "True"
    Zombie = "True"
    Initialization_Complete = "True"
  }
}